.class public Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$SectionHeader;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final SHF_ALLOC:I = 0x2

.field public static final SHF_EXECINSTR:I = 0x4

.field public static final SHF_MASKPROC:I = -0x10000000

.field public static final SHF_WRITE:I = 0x1

.field public static final SHN_ABS:I = 0xfff1

.field public static final SHN_COMMON:I = 0xfff2

.field public static final SHN_HIPROC:I = 0xff1f

.field public static final SHN_HIRESERVE:I = 0xffff

.field public static final SHN_LOPROC:I = 0xff00

.field public static final SHN_LORESERVE:I = 0xff00

.field public static final SHN_UNDEF:I = 0x0

.field public static final SHT_DYNAMIC:I = 0x6

.field public static final SHT_DYNSYM:I = 0xb

.field public static final SHT_HASH:I = 0x5

.field public static final SHT_HIPROC:I = 0x7fffffff

.field public static final SHT_HIUSER:I = -0x1

.field public static final SHT_LOPROC:I = 0x70000000

.field public static final SHT_LOUSER:I = -0x80000000

.field public static final SHT_NOBITS:I = 0x8

.field public static final SHT_NOTE:I = 0x7

.field public static final SHT_NULL:I = 0x0

.field public static final SHT_PROGBITS:I = 0x1

.field public static final SHT_REL:I = 0x9

.field public static final SHT_RELA:I = 0x4

.field public static final SHT_SHLIB:I = 0xa

.field public static final SHT_STRTAB:I = 0x3

.field public static final SHT_SYMTAB:I = 0x2


# instance fields
.field public final shAddr:J

.field public final shAddrAlign:J

.field public final shEntSize:J

.field public final shFlags:J

.field public final shInfo:I

.field public final shLink:I

.field public final shName:I

.field public shNameStr:Ljava/lang/String;

.field public final shOffset:J

.field public final shSize:J

.field public final shType:I


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    iput p2, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$SectionHeader;->shName:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    iput p2, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$SectionHeader;->shType:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$SectionHeader;->shFlags:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$SectionHeader;->shAddr:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$SectionHeader;->shOffset:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$SectionHeader;->shSize:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    iput p2, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$SectionHeader;->shLink:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    iput p2, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$SectionHeader;->shInfo:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$SectionHeader;->shAddrAlign:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected elf class: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    iput p2, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$SectionHeader;->shName:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    iput p2, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$SectionHeader;->shType:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$SectionHeader;->shFlags:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$SectionHeader;->shAddr:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$SectionHeader;->shOffset:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$SectionHeader;->shSize:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    iput p2, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$SectionHeader;->shLink:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    iput p2, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$SectionHeader;->shInfo:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$SectionHeader;->shAddrAlign:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    int-to-long p1, p1

    :goto_0
    iput-wide p1, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$SectionHeader;->shEntSize:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$SectionHeader;->shNameStr:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;ILcom/iqiyi/android/qigsaw/core/common/SplitElfFile$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/iqiyi/android/qigsaw/core/common/SplitElfFile$SectionHeader;-><init>(Ljava/nio/ByteBuffer;I)V

    return-void
.end method
