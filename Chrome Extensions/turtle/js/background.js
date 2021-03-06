function chgIcon(index) {
    if (index == undefined) {
        index = 0;
    } else {
        index %= 20;
    }

    chrome.browserAction.setIcon({
        path: {
            '19': `images/icon19_${index}.png`
        }
    });
    chrome.browserAction.setIcon({
        path: {
            '38': `images/icon38_${index}.png`
        }
    });

    setTimeout(() => {
        chgIcon(++index)
    }, 50);
}

chgIcon();
