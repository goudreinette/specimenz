// Split into spans
Splitting().forEach(s => {
    s.chars.forEach(char => {

        console.log(char)
        setTimeout(() => {
            const duration = 10 + (Math.random() * 20)
            char.classList.add('fading')
            char.style.setProperty("--duration", `${duration}s`);
        }, Math.random() * 30 * 1000)
        // if (word.parentElement.getAttribute('aria-label')) {
        //     word.setAttribute('aria-hidden', true)
        // }
    })
})