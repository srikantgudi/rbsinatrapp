async function showproducts(catid) {
    const resp = await fetch(`/category/${catid}/products`);
    document.getElementById('catproducts').innerHTML = await resp.text();
}

async function showcustomerorders(custid) {
    const resp = await fetch(`/customer/${custid}/orders`);
    document.getElementById('orders').innerHTML = await resp.text();
}
async function showorders(orderid) {
    const resp = await fetch(`/order/${orderid}/details`);
    document.getElementById('odetails').innerHTML = await resp.text();
}

async function showdata(targetId, dataUrlPath) {
    let targetEl = document.getElementById(targetId); 
    console.log('targetId: ', targetId, ' | dataUrlPath: ', dataUrlPath);
    try {
        const resp = await fetch(`${dataUrlPath}`);
        if (!resp.ok) {
            targetEl.innerHTML = new Error(`HTTP ${resp.status}`).message;
        }
        targetEl.innerHTML = await resp.text();
    } catch (err) {
        targetEl.innerHTML = `Failed to load data: ${err.message}`;
    }
}

