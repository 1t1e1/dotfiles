// pdfgrep -n --max-count 10 -i "\btest" *.pdf > searchOutput.md

const fs = require("fs");
// const text = fs.readFileSync("./searchOutput.md").toString();
const text = fs.readFileSync("./test-word-result.grep").toString();

const textByLine = text.split("\n");

const reducerHashmap = (acc, cv, index) => {
	const cols = cv.split(":");
	acc[cols[0]] = [];
	return acc;
};

const hashmap = textByLine.reduce(reducerHashmap, {});
// console.log(hashmap);

const reducer = (acc, cv, index) => {
	const cols = cv.split(":");
	const resultObject = {};
	resultObject.page = cols[1];
	resultObject.desc = cols[2];
	acc[cols[0]].push(resultObject);
	return acc;
};

const searchArr = textByLine.reduce(reducer, hashmap);
// console.log(searchArr);

fs.writeFile(
	"./test-word-result.js",
	JSON.stringify(searchArr),

	function (err) {
		if (err) {
			console.error("Some Crap falan filan");
		}
	}
);
