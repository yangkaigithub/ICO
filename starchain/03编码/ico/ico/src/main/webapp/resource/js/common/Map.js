/**
 * Make a map like java. You can use this map like this : var myMap = new Map();
 * myMap.put("key","value"); var key = myMap.get("key");
 */
function Map() {
	this.elements = new Array();

	this.clear = function() {
		this.elements = new Array();
	}
	
	this.containsKey = function(_key) {
		var bln = false;
		try {
			for (i = 0; i < this.elements.length; i++) {
				if (this.elements[i].key == _key) {
					bln = true;
				}
			}
		} catch (e) {
			bln = false;
		}
		return bln;
	}
	
	this.containsValue = function(_value) {
		var bln = false;
		try {
			for (i = 0; i < this.elements.length; i++) {
				if (this.elements[i].value == _value) {
					bln = true;
				}
			}
		} catch (e) {
			bln = false;
		}
		return bln;
	}
	this.returnKey = function(_value) {
		var index;
		try {
			for (var i = 0; i < this.elements.length; i++) {
				if (this.elements[i].value == _value) {
					index = i;
				}
			}
		} catch (e) {

		}
		return index;
	}
	this.get = function(_key) {
		try {
			for (i = 0; i < this.elements.length; i++) {
				if (this.elements[i].key == _key) {
					return this.elements[i].value;
				}
			}
		} catch (e) {
			return null;
		}
	}
	
	this.isEmpty = function() {
		return (this.elements.length < 1);
	}
	
	this.put = function(_key, _value) {
		if(this.containsKey(_key)){
			this.remove(_key);
		}
		this.elements.push({
			key : _key,
			value : _value
		});
	}
	
	this.putAll = function(map){
		if( map != null && map instanceof Map && map.size() > 0){
			var keys = map.keys();
			for (var i = 0; i < keys.length; i++) {
				this.put(keys[i],map.get(keys[i]));
			}
		}
	}
	
	this.remove = function(_key) {
		var bln = false;
		try {
			for (i = 0; i < this.elements.length; i++) {
				if (this.elements[i].key == _key) {
					this.elements.splice(i, 1);
					return true;
				}
			}
		} catch (e) {
			bln = false;
		}
		return bln;
	}
	
	this.size = function() {
		return this.elements.length;
	}
	
	this.values = function() {
		var arr = new Array();
		for (i = 0; i < this.elements.length; i++) {
			arr.push(this.elements[i].value);
		}
		return arr;
	}

	this.element = function(_index) {
		if (_index < 0 || _index >= this.elements.length) {
			return null;
		}
		return this.elements[_index];
	}

	this.keys = function() {
		var arr = new Array();
		for (i = 0; i < this.elements.length; i++) {
			arr.push(this.elements[i].key);
		}
		return arr;
	}
	
	this.toString = function(){
		var arr = new Array();
		for (i = 0; i < this.elements.length; i++) {
			arr.push(this.elements[i].key);
			arr.push(" : ");
			arr.push(this.elements[i].value);
			arr.push("<hr/>");
		}
		return arr.join("");
	}
}