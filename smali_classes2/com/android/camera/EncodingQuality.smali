.class public final enum Lcom/android/camera/EncodingQuality;
.super Ljava/lang/Enum;
.source "EncodingQuality.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/camera/EncodingQuality;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/EncodingQuality;

.field public static final enum HIGH:Lcom/android/camera/EncodingQuality;

.field public static final enum LOW:Lcom/android/camera/EncodingQuality;

.field public static final MAX_QUALITY_FOR_108MP:I = 0x5a

.field public static final MAX_QUALITY_FOR_AFTER_EFFECT:I = 0x61

.field public static final enum NORMAL:Lcom/android/camera/EncodingQuality;


# instance fields
.field private final heicQuality:I

.field private final jpegQuality:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/camera/EncodingQuality;

    const/4 v1, 0x0

    const-string v2, "LOW"

    const/16 v3, 0x43

    const/16 v4, 0x51

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/android/camera/EncodingQuality;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/camera/EncodingQuality;->LOW:Lcom/android/camera/EncodingQuality;

    new-instance v0, Lcom/android/camera/EncodingQuality;

    const/4 v2, 0x1

    const-string v3, "NORMAL"

    const/16 v4, 0x57

    const/16 v5, 0x59

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/android/camera/EncodingQuality;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/camera/EncodingQuality;->NORMAL:Lcom/android/camera/EncodingQuality;

    new-instance v0, Lcom/android/camera/EncodingQuality;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const/4 v4, 0x2

    const-string v5, "HIGH"

    const/16 v6, 0x5f

    invoke-direct {v0, v5, v4, v3, v6}, Lcom/android/camera/EncodingQuality;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/camera/EncodingQuality;->HIGH:Lcom/android/camera/EncodingQuality;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/EncodingQuality;

    sget-object v3, Lcom/android/camera/EncodingQuality;->LOW:Lcom/android/camera/EncodingQuality;

    aput-object v3, v0, v1

    sget-object v1, Lcom/android/camera/EncodingQuality;->NORMAL:Lcom/android/camera/EncodingQuality;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/EncodingQuality;->HIGH:Lcom/android/camera/EncodingQuality;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/EncodingQuality;->$VALUES:[Lcom/android/camera/EncodingQuality;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/camera/EncodingQuality;->jpegQuality:I

    iput p4, p0, Lcom/android/camera/EncodingQuality;->heicQuality:I

    return-void
.end method

.method public static enumOf(Ljava/lang/String;)Lcom/android/camera/EncodingQuality;
    .locals 6

    invoke-static {}, Lcom/android/camera/EncodingQuality;->values()[Lcom/android/camera/EncodingQuality;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v2, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/EncodingQuality;
    .locals 1

    const-class v0, Lcom/android/camera/EncodingQuality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/camera/EncodingQuality;

    return-object p0
.end method

.method public static values()[Lcom/android/camera/EncodingQuality;
    .locals 1

    sget-object v0, Lcom/android/camera/EncodingQuality;->$VALUES:[Lcom/android/camera/EncodingQuality;

    invoke-virtual {v0}, [Lcom/android/camera/EncodingQuality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/EncodingQuality;

    return-object v0
.end method


# virtual methods
.method public toInteger(Z)I
    .locals 0

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/camera/EncodingQuality;->heicQuality:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/camera/EncodingQuality;->jpegQuality:I

    :goto_0
    return p0
.end method
