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


function startDecaying(char, color) {
    // console.log("Start decaying ", char)
    const duration = 5 + (Math.random() * 30)

    if (!char.classList.contains('fading')) {
        char.classList.add('fading')
        char.style.setProperty("--duration", `${duration}s`);
        char.style.setProperty("--color", color);
    }
} 


// Physarum SVG
const physarumCanvas = document.querySelector('canvas')
const context = physarumCanvas.getContext("2d")
const ctx = context
let polylines = []
const stepSize = .3

function addPolyline(startX, startY, angle, hue) {
    polylines.push({
        hue: hue,
        prevX: startX,
        prevY: startY, 
        currentX: startX,
        currentY: startY,
        angle,
        points: "",
        svgLines: "",
        active: true,
        i: 0,
        stepsSinceTouchedLetter: 5
    })
}

// for (let i = 0; i < 6; i++) {
//   for (let j = 0; j < 6; j++) {
//     ctx.fillStyle = `rgb(
//         ${Math.floor(255 - 42.5 * i)}
//         ${Math.floor(255 - 42.5 * j)}
//         0)`;
//     ctx.fillRect(j * 25, i * 25, 25, 25);
//   }
// }

const $count = document.querySelector('.count')

ctx.canvas.width  = window.innerWidth;
ctx.canvas.height = window.innerHeight;
// ctx.scale(devicePixelRatio, devicePixelRatio);
const angleVariation = 40
// Animate line
setInterval(() => {
    ctx.fillStyle = 'rgba(255,255,255,.001)'
    ctx.fillRect(0,0, ctx.canvas.width,ctx.canvas.height)
   

    let activeLinesCount = 0
    for (const l of polylines) {
        if (l.active) {
            activeLinesCount++
        }
    }

    // console.log(activeLinesCount, polylines.length)
    $count.innerText = `${activeLinesCount}, ${polylines.length}`

    for (const line of polylines) {
        if (line.active) {
            line.i += 1
            line.stepsSinceTouchedLetter += 1 

            line.prevX = line.currentX
            line.prevY = line.currentY
            
            line.angle += randomRange(-angleVariation / 8, angleVariation / 8)
            line.currentY = line.currentY + Math.sin(toRadians(line.angle + randomRange(-angleVariation, angleVariation))) * stepSize + randomRange(-stepSize, stepSize)
            line.currentX = line.currentX + Math.cos(toRadians(line.angle + randomRange(-angleVariation, angleVariation))) * stepSize + randomRange(-stepSize, stepSize) 
            
            line.points += `${line.currentX},${line.currentY} `


            // const color = colorMixer([0,255,0], [255,0,255], Math.abs(Math.sin(line.i / 1000)))
            // line.svgLines += `<line x1="${line.prevX}" y1="${line.prevY}" x2="${line.currentX}" y2="${line.currentY}" stroke="${color}" />`

            const divideChance = line.stepsSinceTouchedLetter < 2 ? .9 : .99
            
            context.fillStyle = `hsl(${line.hue}, 70%, 51%)`; // 'red' //
            context.fillRect(line.currentX, line.currentY, 1, 1)

            // console.log(line.currentX, line.currentY)

            if (Math.random() > divideChance && activeLinesCount < 20) {
                for (let i = 0; i < 9; i++) {
                    addPolyline(line.currentX,line.currentY, line.angle + i * (360/ 9), clamp(50, line.hue + randomRange(-20, 20), 90));
                }
                line.stepsSinceTouchedLetter = 0
            }


            for (const char of chars) {
                const rect = char.getBoundingClientRect()
                var inBox = line.currentX > rect.x && line.currentY > rect.y && line.currentX < rect.x + rect.width && line.currentY < rect.y + rect.height;
                // var b = line.currentY - rect.top;
                // const distFromPoint = Math.sqrt( a*a + b*b );
                if (inBox) {
                    // console.log(char, ' close')
                    startDecaying(char, `hsl(${line.hue}, 100%, 21%)`)
                    line.stepsSinceTouchedLetter = 0
                 
                    
                }
            }

        }

        // newSvgContents += `
        //     <polyline points="${line.points}" fill="none" stroke="hsl(${line.hue}, 70%, 41%)" />
        // `

        // newSvgContents += line.svgLines
        
        // Chance of dying //|| 
        if (Math.random() > .99 && line.stepsSinceTouchedLetter > 400) {
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

            // polylines = polylines.filter(l => l != line)
        }

        polylines = polylines.filter(p => p.active)
    }



    // phy
    // physarumSvg.innerHTML = newSvgContents
}, 30)



// Initial point
const firstchar = document.querySelector('.contact') //chars[0]
const firstCharRect = firstchar.getBoundingClientRect()
console.log(firstCharRect.x, firstCharRect.y)

// addPolyline(firstCharRect.x,firstCharRect.y + 200, 180, 50)
// addPolyline(firstCharRect.x,firstCharRect.y + 200, 270, 50)
// addPolyline(firstCharRect.x,firstCharRect.y + 200, 0, 50)

for (let i = 0; i < 9; i++) {
    addPolyline(firstCharRect.x,firstCharRect.y + 200, i * (360/ 9), 50);
}



// Math utils
function randomRange(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
}

function clamp(min, max) {
  return Math.min(Math.max(this, min), max);
};

function toRadians (angle) {
  return angle * (Math.PI / 180);
}

function toDegrees (angle) {
  return angle * (180 / Math.PI);
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