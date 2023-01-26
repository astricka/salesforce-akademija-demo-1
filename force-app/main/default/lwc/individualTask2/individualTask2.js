/**
 * Created by algirdas on 2023-01-25.
 * */

import { LightningElement, track } from 'lwc';

export default class IndividualTask2 extends LightningElement {
    @track text = 'hello world';
    counter = 0;

    /**
     * Metodas isvkieciamas, kai uzsikrauna komponentas
     */

    connectedCallback() {
        this.counterWords(this.text);
    }

    countWords(event) {
        this.text = event.target.value;
        console.log(this.text);
        this.counterWords(this.text);
    }

    counterWords(text) {
        if (text === "") {
            this.counter = 0;
        } else {
            this.counter = text.split(" ").length;
        }
        console.log(this.counter);
    }
}
