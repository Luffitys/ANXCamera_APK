.class public abstract Lcom/google/protobuf/nano/nano/NanoDescriptor;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final emeritus:Lcom/google/protobuf/nano/Extension;

.field public static final encodedMungee:Lcom/google/protobuf/nano/Extension;

.field public static final enumAsLite:Lcom/google/protobuf/nano/Extension;

.field public static final enumUnmungedFileDescriptorName:Lcom/google/protobuf/nano/Extension;

.field public static final fileAsLite:Lcom/google/protobuf/nano/Extension;

.field public static final generateAs:Lcom/google/protobuf/nano/Extension;

.field public static final legacyEnum:Lcom/google/protobuf/nano/Extension;

.field public static final legacyOneof:Lcom/google/protobuf/nano/Extension;

.field public static final messageAsLite:Lcom/google/protobuf/nano/Extension;

.field public static final messageUnmungedFileDescriptorName:Lcom/google/protobuf/nano/Extension;

.field public static final munger:Lcom/google/protobuf/nano/Extension;

.field public static final unmungedDepsCompliant:Lcom/google/protobuf/nano/Extension;

.field public static final watermarkCompliant:Lcom/google/protobuf/nano/Extension;

.field public static final whitelisted:Lcom/google/protobuf/nano/Extension;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-class v0, Ljava/lang/Integer;

    const-class v1, Ljava/lang/String;

    const-class v2, Ljava/lang/Boolean;

    const/16 v3, 0x8

    const-wide/32 v4, 0x4663df20

    invoke-static {v3, v2, v4, v5}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v4

    sput-object v4, Lcom/google/protobuf/nano/nano/NanoDescriptor;->legacyOneof:Lcom/google/protobuf/nano/Extension;

    const-wide/32 v4, 0x473f92d8

    invoke-static {v3, v2, v4, v5}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v4

    sput-object v4, Lcom/google/protobuf/nano/nano/NanoDescriptor;->messageAsLite:Lcom/google/protobuf/nano/Extension;

    const/16 v4, 0x9

    const-wide/32 v5, 0x5abc8592

    invoke-static {v4, v1, v5, v6}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v5

    sput-object v5, Lcom/google/protobuf/nano/nano/NanoDescriptor;->messageUnmungedFileDescriptorName:Lcom/google/protobuf/nano/Extension;

    const-wide/32 v5, 0x473fae58

    invoke-static {v3, v2, v5, v6}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v5

    sput-object v5, Lcom/google/protobuf/nano/nano/NanoDescriptor;->enumAsLite:Lcom/google/protobuf/nano/Extension;

    const-wide/32 v5, 0x4df9b818

    invoke-static {v3, v2, v5, v6}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v5

    sput-object v5, Lcom/google/protobuf/nano/nano/NanoDescriptor;->legacyEnum:Lcom/google/protobuf/nano/Extension;

    const-wide/32 v5, 0x5abd688a

    invoke-static {v4, v1, v5, v6}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v1

    sput-object v1, Lcom/google/protobuf/nano/nano/NanoDescriptor;->enumUnmungedFileDescriptorName:Lcom/google/protobuf/nano/Extension;

    const/16 v1, 0xe

    const-wide/32 v4, 0x55b04610

    invoke-static {v1, v0, v4, v5}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v4

    sput-object v4, Lcom/google/protobuf/nano/nano/NanoDescriptor;->generateAs:Lcom/google/protobuf/nano/Extension;

    const-wide/32 v4, 0x4d9529e8

    invoke-static {v3, v2, v4, v5}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v4

    sput-object v4, Lcom/google/protobuf/nano/nano/NanoDescriptor;->watermarkCompliant:Lcom/google/protobuf/nano/Extension;

    const-wide/32 v4, 0x4df4da28

    invoke-static {v3, v2, v4, v5}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v4

    sput-object v4, Lcom/google/protobuf/nano/nano/NanoDescriptor;->emeritus:Lcom/google/protobuf/nano/Extension;

    const-wide/32 v4, 0x512fe718

    invoke-static {v3, v2, v4, v5}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v4

    sput-object v4, Lcom/google/protobuf/nano/nano/NanoDescriptor;->unmungedDepsCompliant:Lcom/google/protobuf/nano/Extension;

    const-class v6, [Ljava/lang/String;

    const/16 v5, 0x9

    const-wide/32 v7, 0x55664f42

    const-wide/32 v9, 0x55664f42

    const-wide/16 v11, 0x0

    invoke-static/range {v5 .. v12}, Lcom/google/protobuf/nano/Extension;->createRepeatedPrimitiveTyped(ILjava/lang/Class;JJJ)Lcom/google/protobuf/nano/Extension;

    move-result-object v4

    sput-object v4, Lcom/google/protobuf/nano/nano/NanoDescriptor;->whitelisted:Lcom/google/protobuf/nano/Extension;

    const-wide/32 v4, 0x4a21b128

    invoke-static {v1, v0, v4, v5}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/nano/nano/NanoDescriptor;->munger:Lcom/google/protobuf/nano/Extension;

    const-class v0, [B

    const/16 v1, 0xc

    const-wide/32 v4, 0x4afafa12

    invoke-static {v1, v0, v4, v5}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/nano/nano/NanoDescriptor;->encodedMungee:Lcom/google/protobuf/nano/Extension;

    const-wide/32 v0, 0x5623c8e0

    invoke-static {v3, v2, v0, v1}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/nano/nano/NanoDescriptor;->fileAsLite:Lcom/google/protobuf/nano/Extension;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkGenerateAsOrThrow(I)I
    .locals 3
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/nano/NanoDescriptor$GenerateAs;
    .end annotation

    if-ltz p0, :cond_0

    const/4 v0, 0x3

    if-gt p0, v0, :cond_0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum GenerateAs"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkGenerateAsOrThrow([I)[I
    .locals 3
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/nano/NanoDescriptor$GenerateAs;
    .end annotation

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p0, v1

    invoke-static {v2}, Lcom/google/protobuf/nano/nano/NanoDescriptor;->checkGenerateAsOrThrow(I)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static checkMungerOrThrow(I)I
    .locals 3
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/nano/NanoDescriptor$Munger;
    .end annotation

    if-ltz p0, :cond_0

    const/16 v0, 0x12

    if-gt p0, v0, :cond_0

    return p0

    :cond_0
    const/16 v0, 0x64

    if-lt p0, v0, :cond_1

    const/16 v0, 0x65

    if-gt p0, v0, :cond_1

    return p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum Munger"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkMungerOrThrow([I)[I
    .locals 3
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/nano/NanoDescriptor$Munger;
    .end annotation

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p0, v1

    invoke-static {v2}, Lcom/google/protobuf/nano/nano/NanoDescriptor;->checkMungerOrThrow(I)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
