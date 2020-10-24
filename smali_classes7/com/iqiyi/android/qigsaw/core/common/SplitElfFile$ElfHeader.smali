.class public Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final EI_CLASS:I = 0x4

.field public static final EI_DATA:I = 0x5

.field private static final EI_NINDENT:I = 0x10

.field public static final EI_VERSION:I = 0x6

.field public static final ELFCLASS32:I = 0x1

.field public static final ELFCLASS64:I = 0x2

.field public static final ELFDATA2LSB:I = 0x1

.field public static final ELFDATA2MSB:I = 0x2

.field public static final ET_CORE:I = 0x4

.field public static final ET_DYN:I = 0x3

.field public static final ET_EXEC:I = 0x2

.field public static final ET_HIPROC:I = 0xffff

.field public static final ET_LOPROC:I = 0xff00

.field public static final ET_NONE:I = 0x0

.field public static final ET_REL:I = 0x1

.field public static final EV_CURRENT:I = 0x1


# instance fields
.field public final eEhSize:S

.field public final eEntry:J

.field public final eFlags:I

.field public final eIndent:[B

.field public final eMachine:S

.field public final ePhEntSize:S

.field public final ePhNum:S

.field public final ePhOff:J

.field public final eShEntSize:S

.field public final eShNum:S

.field public final eShOff:J

.field public final eShStrNdx:S

.field public final eType:S

.field public final eVersion:I


# direct methods
.method private constructor <init>(Ljava/nio/channels/FileChannel;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;->eIndent:[B

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;->eIndent:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;->eIndent:[B

    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/16 v7, 0x7f

    if-ne v2, v7, :cond_4

    aget-byte v2, v0, v6

    const/16 v7, 0x45

    if-ne v2, v7, :cond_4

    aget-byte v2, v0, v4

    const/16 v7, 0x4c

    if-ne v2, v7, :cond_4

    aget-byte v2, v0, v3

    const/16 v7, 0x46

    if-ne v2, v7, :cond_4

    aget-byte v0, v0, v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad elf class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;->eIndent:[B

    aget-byte v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v6, v4, v1}, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile;->access$300(IIILjava/lang/String;)V

    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;->eIndent:[B

    const/4 v1, 0x5

    aget-byte v0, v0, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad elf data encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;->eIndent:[B

    aget-byte v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v6, v4, v2}, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile;->access$300(IIILjava/lang/String;)V

    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;->eIndent:[B

    aget-byte v0, v0, v5

    if-ne v0, v6, :cond_0

    const/16 v0, 0x24

    goto :goto_0

    :cond_0
    const/16 v0, 0x30

    :goto_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;->eIndent:[B

    aget-byte v1, v2, v1

    if-ne v1, v6, :cond_1

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_1

    :cond_1
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    :goto_1
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const-string v1, "failed to read rest part of ehdr."

    invoke-static {p1, v0, v1}, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile;->readUntilLimit(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    iput-short p1, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;->eType:S

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    iput-short p1, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;->eMachine:S

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;->eVersion:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad elf version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;->eVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v6, v6, v1}, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile;->access$300(IIILjava/lang/String;)V

    iget-object p1, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;->eIndent:[B

    aget-byte p1, p1, v5

    if-eq p1, v6, :cond_3

    if-ne p1, v4, :cond_2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;->eEntry:J

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;->ePhOff:J

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected elf class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;->eIndent:[B

    aget-byte p0, p0, v5

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    int-to-long v1, p1

    iput-wide v1, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;->eEntry:J

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    int-to-long v1, p1

    iput-wide v1, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;->ePhOff:J

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    int-to-long v1, p1

    :goto_2
    iput-wide v1, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;->eShOff:J

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;->eFlags:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    iput-short p1, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;->eEhSize:S

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    iput-short p1, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;->ePhEntSize:S

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    iput-short p1, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;->ePhNum:S

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    iput-short p1, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;->eShEntSize:S

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    iput-short p1, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;->eShNum:S

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    iput-short p1, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;->eShStrNdx:S

    return-void

    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-array v0, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;->eIndent:[B

    aget-byte v2, v2, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;->eIndent:[B

    aget-byte v1, v1, v6

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;->eIndent:[B

    aget-byte v1, v1, v4

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;->eIndent:[B

    aget-byte p0, p0, v3

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    aput-object p0, v0, v3

    const-string p0, "bad elf magic: %x %x %x %x."

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Ljava/nio/channels/FileChannel;Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$ElfHeader;-><init>(Ljava/nio/channels/FileChannel;)V

    return-void
.end method
