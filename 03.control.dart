main(){
    int myVar = 10;
    // if
    if (myVar > 5) {
        print('myVar is greater than 5');
    } else {
        print('myVar is less than or equal to 5');
    }

    // for

    for (int i = 0; i < 10; i++) {
        print('i is $i');
    }

    // while

    int j = 0;
    while (j < 10) {
        print('j is $j');
        j++;
    }

    // switch
    switch (myVar) {
        case 5:
            print('myVar is equal to 5');
            break;
        case 10:
            print('myVar is equal to 10');
            break;
        default:
            print('myVar is not 5 or 10');
            break;
    }
}