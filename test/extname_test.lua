local testcase = require('testcase')
local extname = require('extname')

function testcase.extname()
    -- test that extract extension part of pathname
    for _, v in ipairs({
        {
            ".jpg",
            ".jpg",
        },
        {
            "foo.tar.gz",
            ".gz",
        },
        {
            "a/b/c.html",
            ".html",
        },
    }) do
        local ext = assert(extname(v[1]))
        assert.equal(ext, v[2])
    end
    local ext = assert(extname())
    assert.equal(ext, '')

    -- test that throws an error if argument is invalid
    local err = assert.throws(extname, {})
    assert.match(err, 'pathname must be string')
end

function testcase.extname_multiple()
    -- test that extract multiple extension part of pathname
    for _, v in ipairs({
        {
            ".jpg",
            ".jpg",
        },
        {
            "foo.tar.gz",
            ".tar.gz",
        },
        {
            ".hello.world",
            ".hello.world",
        },
    }) do
        local ext = assert(extname(v[1], true))
        assert.equal(ext, v[2])
    end

    -- test that throws an error if argument is invalid
    local err = assert.throws(extname, '', {})
    assert.match(err, 'multiple must be boolean')
end
