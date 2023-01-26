/**
 * Created by algirdas on 2023-01-19.
 */

import { LightningElement } from 'lwc';

export default class ApiParentComponent extends LightningElement {
    parentMessage = 'initial message';

    changeValue() {
        this.parentMessage = 'new message';
    }
}
