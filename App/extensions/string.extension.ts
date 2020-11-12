interface String {
    delNumbers(): string;
}

String.prototype.delNumbers = function (): string {

    return this.replace(/\d/g, '')
}
