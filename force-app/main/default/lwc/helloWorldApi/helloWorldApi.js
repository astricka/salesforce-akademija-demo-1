/**
 * Created by algirdas on 2023-01-19.
 */

import { api, LightningElement } from 'lwc';

export default class HelloWorldApi extends LightningElement {
    @api helloName;
}
