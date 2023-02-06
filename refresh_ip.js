var process = require('child_process');


(async function () {
  const r = await fetch("https://api-ipv4.ip.sb/ip");
  const ip = await r.text();
  const a = process.execSync("aliyun alidns DescribeDomainRecordInfo --region cn-wulanchabu --RecordId 699689872921549824").toString();
  const old_id = JSON.parse(a).Value;
  if (ip === old_id) {
    console.log(`IP: `,ip)
  } else {
    console.log(`IP Change To: `,ip)
    process.execSync(`aliyun alidns UpdateDomainRecord --region cn-wulanchabu --RecordId 699689872921549824 --RR srjc --Type A --Value '${ip}'`)
  }
})();
