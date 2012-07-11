$.fn.ObfJs = ->
	$this = this;
	
	$this.each(->
		# Get the beginnings
		a = $(this).attr('data-begin')
		b = $(this).attr('data-end')
		str = a + '@' + b;
		
		i = 0
		build = '';
		while i < str.split('').length
			build += '&#'+ str.charCodeAt(i) + ';';
			i++
		
		
		$(this).on('mouseenter', (e)->
			i = 0
			# store html as ie replaces
			text = this.innerHTML
			this.href = 'mailto:' + str;
			this.innerHTML = text
		).on('mouseleave', ->
			this.href = '#';
		)
	)