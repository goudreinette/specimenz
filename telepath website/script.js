// Split into spans
let chars = []
Splitting().forEach(s => {
    chars = [...chars, ...s.chars]

    s.chars.forEach(char => {
        // setTimeout(() => {
        //     startDecaying(char)
        // }, Math.random() * 30 * 1000)
    })
})


function startDecaying(char) {
    console.log("Start decaying ", char)
    const duration = 5 + (Math.random() * 30)

    if (!char.classList.contains('fading')) {
        char.classList.add('fading')
        char.style.setProperty("--duration", `${duration}s`);
    }
} 


// Physarum SVG
const physarumSvg = document.querySelector('svg#physarum')
let polylines = []
const stepSize = 8

function addPolyline(startX, startY) {
    polylines.push({
        prevX: startX,
        prevY: startY, 
        currentX: startX,
        currentY: startY,
        points: "",
        svgLines: "",
        active: true,
        i: 0,
        stepsSinceTouchedLetter: 0
    })
}


// Animate line
setInterval(() => {
    let newSvgContents = ""
    let activeLinesCount = 0
    for (const l of polylines) {
        if (l.active) {
            activeLinesCount++
        }
    }

    for (const line of polylines) {
        if (line.active) {
            line.i += 1
            line.stepsSinceTouchedLetter += 1 

            line.prevX = line.currentX
            line.prevY = line.currentY
            line.currentY = line.currentY + randomRange(-stepSize, stepSize)
            line.currentX = line.currentX + randomRange(-stepSize, stepSize)
            
            line.points += `${line.currentX},${line.currentY} `

            // const color = colorMixer([0,255,0], [255,0,255], Math.abs(Math.sin(line.i / 1000)))
            // line.svgLines += `<line x1="${line.prevX}" y1="${line.prevY}" x2="${line.currentX}" y2="${line.currentY}" stroke="${color}" />`

            const divideChance = line.stepsSinceTouchedLetter < 100 ? .99 : .9997
       

            if (Math.random() > divideChance && activeLinesCount < 10) {
                addPolyline(line.currentX, line.currentY)
            }

            for (const char of chars) {
                const rect = char.getBoundingClientRect()
                var distFromPoint = Math.abs(line.currentX - rect.x) + Math.abs(line.currentY - (rect.y));
                // var b = line.currentY - rect.top;
                // const distFromPoint = Math.sqrt( a*a + b*b );
                if (distFromPoint < 10) {
                    // console.log(char, ' close')
                    startDecaying(char)
                    line.stepsSinceTouchedLetter = 0
                }
            }

        }

        newSvgContents += `
            <polyline points="${line.points}" fill="none" stroke="olive" />
        `

        // newSvgContents += line.svgLines
        
        // Chance of dying
        if (Math.random() > .999 || line.stepsSinceTouchedLetter > 1000) {
            let activeLinesCount = 0
            for (const l of polylines) {
                if (l.active) {
                    activeLinesCount++
                }
            }

            // Don't be the only leftover active line
            if (activeLinesCount > 1) {
                line.active = false
            }
        }
    }

    physarumSvg.innerHTML = newSvgContents
}, 10)



// Initial point
const firstchar = chars[0]
const firstCharRect = firstchar.getBoundingClientRect()
console.log(firstCharRect.x, firstCharRect.y)
addPolyline(firstCharRect.x,firstCharRect.y)





// Math utils
function randomRange(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
}







//colorChannelA and colorChannelB are ints ranging from 0 to 255
function colorChannelMixer(colorChannelA, colorChannelB, amountToMix){
    var channelA = colorChannelA*amountToMix;
    var channelB = colorChannelB*(1-amountToMix);
    return parseInt(channelA+channelB);
}
//rgbA and rgbB are arrays, amountToMix ranges from 0.0 to 1.0
//example (red): rgbA = [255,0,0]
function colorMixer(rgbA, rgbB, amountToMix){
    var r = colorChannelMixer(rgbA[0],rgbB[0],amountToMix);
    var g = colorChannelMixer(rgbA[1],rgbB[1],amountToMix);
    var b = colorChannelMixer(rgbA[2],rgbB[2],amountToMix);
    return "rgb("+r+","+g+","+b+")";
}