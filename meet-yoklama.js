// 1 function console da calistiriniz.
// 2 kisilerin kullanici isimleri yazildigi panel acik olmasi gerekli. (uzerinde rakam olan kisi sembolu)
// 3 herhangi bir kisiyi inspect elemnent ile ismini kapsayan class ogrenilmesi gerekiyor. (bu casede ZjFb7c)
// 4 Bir defalik sinif listesi duzenlenmesi gerekiyor.
//

(() => {
	const sinifListesiStr = `Talha Baris
  Isim soyisim
  google username`;

	const sinifListesiArray = sinifListesiStr.split("\n");

	const yoklamaAlArray = (nodes) => {
		const derstekilerArr = [];

		for (key in nodes) {
			derstekilerArr.push(nodes[key].innerText);
		}

		return derstekilerArr;
	};

	let htmlNodes = document.getElementsByClassName("ZjFb7c");
	const googleMeetYoklama = yoklamaAlArray(htmlNodes);

	function farklariHesapla(A, B) {
		let a = new Set(A);
		let b = new Set(B);

		let a_minus_b = new Set([...a].filter((x) => !b.has(x)));
		let b_minus_a = new Set([...b].filter((x) => !a.has(x)));
		let a_intersect_b = new Set([...a].filter((x) => b.has(x)));

		console.log("A-B gelmeyenler", [...a_minus_b]);
		console.log("B-A fazladan ", [...b_minus_a]);
		console.log("AnB siniftakiler", [...a_intersect_b]);
	}

	farklariHesapla(sinifListesiArray, googleMeetYoklama);
})();
