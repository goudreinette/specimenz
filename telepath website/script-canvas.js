
// TEXT SPLITTING AND FADING -------------------------------------------------------
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



// PHYSARUM CANVAS --------------------------------------------------------------
const physarumCanvas = document.querySelector('canvas')
const context = physarumCanvas.getContext("2d")
const ctx = context
let polylines = []
const stepSize = .3

function addPhysarumBranch(startX, startY, angle, hue) {
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


const $count = document.querySelector('.count')

ctx.canvas.width  = window.innerWidth;
ctx.canvas.height = window.innerHeight;
const angleVariation = 40



// UPDATE, ANIMATE PHYSARUM ------------------------------------------------------
setInterval(() => {
    // Clear screen?
    // ctx.fillStyle = 'rgba(255,255,255,.001)'
    // ctx.fillRect(0,0, ctx.canvas.width,ctx.canvas.height)
   

    let activeLinesCount = 0
    for (const l of polylines) {
        if (l.active) {
            activeLinesCount++
        }
    }

    // console.log(activeLinesCount, polylines.length)

    for (const line of polylines) {
        if (line.active) {
            line.i += 1
            line.stepsSinceTouchedLetter += 1 

            line.prevX = line.currentX
            line.prevY = line.currentY
            
            // Move and angle
            line.angle += randomRange(-angleVariation / 8, angleVariation / 8)
            line.currentY = line.currentY + Math.sin(toRadians(line.angle + randomRange(-angleVariation, angleVariation))) * stepSize + randomRange(-stepSize, stepSize)
            line.currentX = line.currentX + Math.cos(toRadians(line.angle + randomRange(-angleVariation, angleVariation))) * stepSize + randomRange(-stepSize, stepSize) 
            


            const divideChance = line.stepsSinceTouchedLetter < 2 ? .9 : .99
            
            context.fillStyle = `hsl(${line.hue}, 70%, 51%)`; // 'red' //
            context.fillRect(line.currentX, line.currentY, 1, 1)

            // console.log(line.currentX, line.currentY)

            if (Math.random() > divideChance && activeLinesCount < 20) {
                for (let i = 0; i < 9; i++) {
                    addPhysarumBranch(line.currentX,line.currentY, line.angle + i * (360/ 9), clamp(50, line.hue + randomRange(-20, 20), 90));
                }
                line.stepsSinceTouchedLetter = 0
            }


            for (const char of chars) {
                const rect = char.getBoundingClientRect()
                const charX = rect.x + window.scrollX
                const charY = rect.y + window.scrollY

                var inBox = line.currentX > charX && line.currentY > charY && line.currentX < charX + rect.width && line.currentY < charY + rect.height;
                // var b = line.currentY - rect.top;
                // const distFromPoint = Math.sqrt( a*a + b*b );
                if (inBox) {
                    // console.log(char, ' close')
                    startDecaying(char, `hsl(${line.hue}, 100%, 70%)`)
                    line.stepsSinceTouchedLetter = 0
                }
            }
        }


        // Chance of dying //|
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
        }

        polylines = polylines.filter(p => p.active)
    }
}, 30) // 30fps



// STARTING POINT  ------------------------------------------------------
const firstchar = document.querySelector('.contact') //chars[0]
const firstCharRect = firstchar.getBoundingClientRect()
console.log(firstCharRect)
const startX = firstCharRect.x + scrollX
const startY = firstCharRect.y + scrollY + 500

console.log(startX, startY)

for (let i = 0; i < 9; i++) {
    addPhysarumBranch(startX, startY, i * (360/ 9), 50);
}








// Math utils ------------------------------------------------------------
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