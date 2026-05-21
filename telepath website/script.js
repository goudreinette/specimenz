// Split into spans
let chars = null
Splitting().forEach(s => {
    chars = s.chars

    s.chars.forEach(char => {
        // setTimeout(() => {
        //     startDecaying(char)
        // }, Math.random() * 30 * 1000)
    })
})


function startDecaying(char) {
    console.log("Start decaying ", char)
    const duration = (Math.random() * 10)
    char.classList.add('fading')
    char.style.setProperty("--duration", `${duration}s`);
} 


// Physarum SVG
const physarumSvg = document.querySelector('svg#physarum')
let polylines = []
const stepSize = 20

function addPolyline(startX, startY) {
    polylines.push({
        prevX: startX,
        prevY: startY, 
        currentX: startX,
        currentY: startY,
        points: "",
        active: true
    })
}


// Animate line
setInterval(() => {
    let newSvgContents = ""
    for (const line of polylines) {
        if (line.active) {
            line.prevX = line.currentX
            line.prevX = line.currentX
            line.currentY = line.currentY + randomRange(-stepSize, stepSize)
            line.currentX = line.currentX + randomRange(-stepSize, stepSize)
            
            line.points += `${line.currentX},${line.currentY} `

            if (Math.random() > .995 && polylines.length < 10) {
                addPolyline(line.currentX, line.currentY)
            }

            for (const char of chars) {
                const rect = char.getBoundingClientRect()
                var distFromPoint = Math.abs(line.currentX - rect.x) + Math.abs(line.currentY - (rect.y));
                // var b = line.currentY - rect.top;
                // const distFromPoint = Math.sqrt( a*a + b*b );
                if (distFromPoint < 500) {
                    console.log(char, ' close')
                    startDecaying(char)
                }
            }
        }

        newSvgContents += `
            <polyline points="${line.points}" fill="none" stroke="olive" />
        `
        
        // Chance of dying
        if (Math.random() > .999) {
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
}, 50)



// Initial point
addPolyline(300,200)


function randomRange(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
}
