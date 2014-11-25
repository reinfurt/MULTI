	// animateCircle

        var canvas, context, step, steps, frames, delay;
        var centerX, centerY, radius, direction;
        var counter;
 
        function initCircle() {
                canvas = document.getElementById("canvas3");
                context = canvas.getContext("2d");
                centerX = canvas.width / 2;
                centerY = canvas.height / 2;
                context.fillStyle = "white";
                context.lineWidth = 6;
		var grad = context.createLinearGradient(50, 50, 150, 150);
		grad.addColorStop(0, "#F0F");
		grad.addColorStop(1, "#0CF");
		context.strokeStyle = grad;
                counter = 0;
                radius = canvas.width/2.25;
                frames = 60;
                step = 2.0 * Math.PI / frames;
                delay = 25;
                direction = 1;
                animateNext();
        }
 
        function animateNext() {
                counter++;
                context.clearRect(0, 0, canvas.width, canvas.height);
                var thisStep = (counter % frames) * step * direction;
                context.beginPath();
                context.arc(centerX, centerY, radius, 0, thisStep, false);
                context.stroke();
                var t = setTimeout('animateNext()', delay);
        }

