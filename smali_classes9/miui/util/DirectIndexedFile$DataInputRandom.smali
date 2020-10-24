.class Lmiui/util/DirectIndexedFile$DataInputRandom;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/util/DirectIndexedFile$InputFile;


# instance fields
.field private mFile:Ljava/io/RandomAccessFile;


# direct methods
.method constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/util/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public getFilePointer()J
    .locals 2

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    return-wide v0
.end method

.method public readBoolean()Z
    .locals 0

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result p0

    return p0
.end method

.method public readByte()B
    .locals 0

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readByte()B

    move-result p0

    return p0
.end method

.method public readChar()C
    .locals 0

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readChar()C

    move-result p0

    return p0
.end method

.method public readDouble()D
    .locals 2

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 0

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readFloat()F

    move-result p0

    return p0
.end method

.method public readFully([B)V
    .locals 0

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->readFully([B)V

    return-void
.end method

.method public readFully([BII)V
    .locals 0

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/RandomAccessFile;->readFully([BII)V

    return-void
.end method

.method public readInt()I
    .locals 0

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p0

    return p0
.end method

.method public readLine()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public readLong()J
    .locals 2

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .locals 0

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readShort()S

    move-result p0

    return p0
.end method

.method public readUTF()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public readUnsignedByte()I
    .locals 0

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result p0

    return p0
.end method

.method public readUnsignedShort()I
    .locals 0

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    move-result p0

    return p0
.end method

.method public seek(J)V
    .locals 0

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method

.method public skipBytes(I)I
    .locals 0

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$DataInputRandom;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result p0

    return p0
.end method
