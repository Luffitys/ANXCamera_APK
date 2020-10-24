.class public LOooO0O0/OooO0o0/OooO00o/OooO0Oo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LOooO0O0/OooO0o0/OooO00o/OooO0oo;


# static fields
.field private static final o00o0:Ljava/lang/String; = "OooO0Oo"

.field private static final o00o0O0:I = 0x0

.field private static final o00o0O00:Z

.field private static final o00o0O0O:I = 0x1

.field private static final o00o0OO:Z = false

.field private static final o00o0OO0:I = 0x2


# instance fields
.field private o00o00oO:Ljava/lang/String;

.field private o00o00oo:Lcom/mi/device/Common;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/android/camera/Util;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "camera.feature.clone"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    sput-boolean v1, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o0O00:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo0O()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LOooO0OO/OooO0O0;->OooO0O0(Ljava/lang/String;)Lcom/mi/device/Common;

    move-result-object v0

    iput-object v0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o0:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init proxy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic constructor <init>(LOooO0O0/OooO0o0/OooO00o/OooO0O0;)V
    .locals 0

    invoke-direct {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;-><init>()V

    return-void
.end method

.method public static OooOooo()Ljava/lang/String;
    .locals 2

    const-string v0, "ro.boot.camera.config"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const-string v0, "_pro"

    return-object v0
.end method

.method private Ooooooo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->ooOO()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;
    .locals 1

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0OO;->OooO00o:LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    return-object v0
.end method

.method private o00OO0oo(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->oo000o()Landroid/util/Size;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/16 v1, 0x20

    const v2, 0x80f3

    invoke-virtual {p1, v1, v2}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputSizeWithAssignedMode(II)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraSize;

    iget v2, v1, Lcom/android/camera/CameraSize;->width:I

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v3

    if-lt v2, v3, :cond_2

    iget v2, v1, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-lt v2, v3, :cond_2

    sget-object p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o0:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isSupportUltraPixelRaw size:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/camera/CameraSize;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method static synthetic o00Oo0o(Lcom/android/camera2/CameraCapabilities;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->isMtkPipDevicesSupported()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private o00OoOo(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->Ooooooo()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->ooOO()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object p3

    :cond_1
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string p1, ";"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    :cond_3
    return-object p3
.end method

.method private o00o00O0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00o0ooo()Z

    move-result p0

    return p0
.end method

.method private o00oO0o(Ljava/lang/String;)Landroid/util/Size;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, 0x3a

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/4 v0, 0x1

    add-int/2addr p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, " "

    const-string v1, ""

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "x"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    const/4 v1, 0x2

    if-lt p1, v1, :cond_0

    const/4 p1, 0x0

    aget-object p1, p0, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private o00ooo(Ljava/lang/String;)I
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private o0ooOOo()I
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->oo000o()I

    move-result p0

    return p0
.end method

.method private ooOO()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00Oo0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public OooO()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->OooOO0O()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public OooO00o()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->OooO0O0()Z

    move-result p0

    return p0
.end method

.method public OooO0O0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->OooO0OO()Z

    move-result p0

    return p0
.end method

.method public OooO0OO()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->OooO0Oo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public OooO0Oo()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->OooO0o0()Z

    move-result p0

    return p0
.end method

.method public OooO0o()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->OooO0oO()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public OooO0o0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->OooO0o()Z

    move-result p0

    return p0
.end method

.method public OooO0oO()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->OooO0oo()Z

    move-result p0

    return p0
.end method

.method public OooO0oo()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->OooO()Z

    move-result p0

    return p0
.end method

.method public OooOO0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->OooOO0o()Z

    move-result p0

    return p0
.end method

.method public OooOO0O()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->OooOOO0()Z

    move-result p0

    return p0
.end method

.method public OooOO0o()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->OooOOO()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public OooOOO()I
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->OooOOo0()I

    move-result p0

    return p0
.end method

.method public OooOOO0(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->OooOOOo()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public OooOOOO()I
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->OooOOo()I

    move-result p0

    return p0
.end method

.method public OooOOOo()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->OooOOoo()Z

    move-result p0

    return p0
.end method

.method public OooOOo()I
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->OooOo0()I

    move-result p0

    return p0
.end method

.method public OooOOo0()I
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->OooOo00()I

    move-result p0

    return p0
.end method

.method public OooOOoo()Landroid/util/Size;
    .locals 3

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOO0o()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    aget-object p0, p0, v1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    new-instance v0, Landroid/util/Size;

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-direct {v0, v2, p0}, Landroid/util/Size;-><init>(II)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public OooOo()Lcom/mi/device/Common;
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    return-object p0
.end method

.method public OooOo0()J
    .locals 2

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->OooOo()J

    move-result-wide v0

    return-wide v0
.end method

.method public OooOo00()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->OooOo0O()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public OooOo0O()Ljava/lang/String;
    .locals 3

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x32afd5

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "lime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o0000o0()Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "in"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOooo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public OooOo0o()I
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->OooOoO0()I

    move-result p0

    return p0
.end method

.method public OooOoO()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->OooOoOO()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public OooOoO0()F
    .locals 2

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->OooOoO()F

    move-result p0

    invoke-static {}, Lcom/android/camera/Util;->getDumpCropFrontZoomRatio()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Util;->getDumpCropFrontZoomRatio()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, p0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Util;->getDumpCropFrontZoomRatio()Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    :cond_0
    return p0
.end method

.method public OooOoOO(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->Oooo00o()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo00()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public OooOoo(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const-string p0, "4x3"

    return-object p0

    :cond_0
    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->OooOoo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public OooOoo0()[I
    .locals 4

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->OooOoo0()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    new-array v0, v0, [I

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v2
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    sget-object p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o0:Ljava/lang/String;

    const-string v0, "get default favorite modes fails."

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public OooOooO()I
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->OooOooO()I

    move-result p0

    return p0
.end method

.method public Oooo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->OoooO00()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public Oooo0()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->Oooo0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public Oooo000()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->OooOooo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public Oooo00O()I
    .locals 1

    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->Oooo00o:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHighQualityPreferred()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->Oooo000()I

    move-result p0

    return p0
.end method

.method public Oooo00o()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->Oooo00o()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public Oooo0O0()I
    .locals 1

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->Oooo0()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00ooo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public Oooo0OO()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->Oooo0O0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public Oooo0o()F
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->Oooo0oO()F

    move-result p0

    return p0
.end method

.method public Oooo0o0()[I
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->Oooo0o()[I

    move-result-object p0

    return-object p0
.end method

.method public Oooo0oO()I
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->Oooo0oo()I

    move-result p0

    return p0
.end method

.method public Oooo0oo()I
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->Oooo()I

    move-result p0

    return p0
.end method

.method public OoooO()I
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000oOoO()I

    move-result p0

    return p0
.end method

.method public OoooO0()I
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->OoooO()I

    move-result p0

    return p0
.end method

.method public OoooO00()F
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->OoooO0O()F

    move-result p0

    return p0
.end method

.method public OoooO0O()I
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->OoooOO0()I

    move-result p0

    return p0
.end method

.method public OoooOO0()Ljava/util/Map;
    .locals 13

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->OoooOOO()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    return-object v0

    :cond_0
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v6, ";"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v6, p0

    move v7, v1

    :goto_0
    if-ge v7, v6, :cond_2

    aget-object v8, p0, v7

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    sget-wide v9, Lcom/android/camera/Util;->TOTAL_MEMORY_GB:J

    aget-object v11, v8, v1

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-gez v9, :cond_1

    aget-object p0, v8, v3

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v6, "!"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object v6, p0, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object p0, p0, v3

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v5, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public OoooOOO()I
    .locals 4

    sget-wide v0, Lcom/android/camera/Util;->TOTAL_MEMORY_GB:J

    const-wide/16 v2, 0x6

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->OoooOo0()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xb

    return p0
.end method

.method public OoooOOo()I
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->OoooOoO()I

    move-result p0

    return p0
.end method

.method public OoooOo0()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->OoooOoo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public OoooOoO()I
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOOo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOoO()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OoooOo0()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00ooo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public OoooOoo()I
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OoooO()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x6

    return p0

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00Ooooo()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x5

    return p0

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHighQualityPreferred()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->Ooooo00()I

    move-result p0

    return p0

    :cond_2
    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->Ooooo00()I

    move-result p0

    return p0
.end method

.method public Ooooo00()I
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->Ooooo0o()I

    move-result p0

    return p0
.end method

.method public Ooooo0o()[F
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->OooooO0()[F

    move-result-object p0

    return-object p0
.end method

.method public OooooO0()[F
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->OooooOO()[F

    move-result-object p0

    return-object p0
.end method

.method public OooooOO()I
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->OooooOo()I

    move-result p0

    return p0
.end method

.method public OooooOo()J
    .locals 2

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->Oooooo0()J

    move-result-wide v0

    return-wide v0
.end method

.method public Oooooo()I
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->Ooooooo()I

    move-result p0

    return p0
.end method

.method public Oooooo0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->Oooooo()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    return-object p0
.end method

.method public OoooooO()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o0OoOo0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public o00()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00oOoo()Z

    move-result p0

    return p0
.end method

.method public o000()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000O000()Z

    move-result p0

    return p0
.end method

.method public o0000()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00000Oo()Z

    move-result p0

    return p0
.end method

.method public o00000()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000000()Z

    move-result p0

    return p0
.end method

.method public o000000()Z
    .locals 1

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OoooOoO()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o0OO00O()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public o000000o()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000OOo()Z

    move-result p0

    return p0
.end method

.method public o00000O()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000000o()Z

    move-result p0

    return p0
.end method

.method public o00000O0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000000O()Z

    move-result p0

    return p0
.end method

.method public o00000OO()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00000()Z

    move-result p0

    return p0
.end method

.method public o00000Oo()Z
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oO:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "ro.boot.hwc"

    invoke-static {v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oO:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oO:Ljava/lang/String;

    const-string v0, "cn"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public o00000o0()Z
    .locals 1

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->oo00oO()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "CAPTURE_INTENT"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public o00000oO()Z
    .locals 2

    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOo0o:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00000O()Z

    move-result p0

    return p0
.end method

.method public o00000oo()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00000OO()Z

    move-result p0

    return p0
.end method

.method public o0000O()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o0000oO()Z

    move-result p0

    return p0
.end method

.method public o0000O0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o0000()Z

    move-result p0

    return p0
.end method

.method public o0000O00()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00000o0()Z

    move-result p0

    return p0
.end method

.method public o0000O0O()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o0000O00()Z

    move-result p0

    return p0
.end method

.method public o0000OO()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000OO()Z

    move-result p0

    return p0
.end method

.method public o0000OO0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o0000O0O()Z

    move-result p0

    return p0
.end method

.method public o0000OOO()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o0000O()Z

    move-result p0

    return p0
.end method

.method public o0000OOo()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o0000OO()Z

    move-result p0

    return p0
.end method

.method public o0000Oo()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o0000OOo()Z

    move-result p0

    return p0
.end method

.method public o0000Oo0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o0000OOO()Z

    move-result p0

    return p0
.end method

.method public o0000OoO()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o0000Oo()Z

    move-result p0

    return p0
.end method

.method public o0000Ooo()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00000O0()Z

    move-result p0

    return p0
.end method

.method public o0000o()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o0000o()Z

    move-result p0

    return p0
.end method

.method public o0000o0()Z
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oO:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "ro.boot.hwc"

    invoke-static {v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oO:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oO:Ljava/lang/String;

    const-string v1, "india"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oO:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oO:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "india_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public o0000o0O()Z
    .locals 1

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object p0

    const-string v0, "IN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public o0000o0o()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o0000o0o()Z

    move-result p0

    return p0
.end method

.method public o0000oO()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00000oo()Z

    move-result p0

    return p0
.end method

.method public o0000oO0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o0000oOO()Z

    move-result p0

    return p0
.end method

.method public o0000oOO()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o0000oOo()Z

    move-result p0

    return p0
.end method

.method public o0000oOo()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o0000oo0()Z

    move-result p0

    return p0
.end method

.method public o0000oo()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00000oO()Z

    move-result p0

    return p0
.end method

.method public o0000oo0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o0000ooO()Z

    move-result p0

    return p0
.end method

.method public o0000ooO()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000()Z

    move-result p0

    return p0
.end method

.method public o000O()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000O()Z

    move-result p0

    return p0
.end method

.method public o000O0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000O0()Z

    move-result p0

    return p0
.end method

.method public o000O00(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 1

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOO0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00OO0oo(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public o000O000()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000OoO()Z

    move-result p0

    return p0
.end method

.method public o000O00O()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000O00O()Z

    move-result p0

    return p0
.end method

.method public o000O0O()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000Ooo()Z

    move-result p0

    return p0
.end method

.method public o000O0O0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000O0O0()Z

    move-result p0

    return p0
.end method

.method public o000O0Oo()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000O0Oo()Z

    move-result p0

    return p0
.end method

.method public o000O0o()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000O0o()Z

    move-result p0

    return p0
.end method

.method public o000O0o0()Z
    .locals 1

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->oo00oO()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "MACRO"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public o000O0oO()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000O0o0()Z

    move-result p0

    return p0
.end method

.method public o000O0oo()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000O0oo()Z

    move-result p0

    return p0
.end method

.method public o000OO()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o0000oo()Z

    move-result p0

    return p0
.end method

.method public o000OO00()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o0OoO0o()Z

    move-result p0

    return p0
.end method

.method public o000OO0O()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000OO0O()Z

    move-result p0

    return p0
.end method

.method public o000OO0o()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000OOO()Z

    move-result p0

    return p0
.end method

.method public o000OOO()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000OOo0()Z

    move-result p0

    return p0
.end method

.method public o000OOo()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o0Oo0oo()Z

    move-result p0

    return p0
.end method

.method public o000OOo0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000OOoO()Z

    move-result p0

    return p0
.end method

.method public o000OOoO()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000Oo00()Z

    move-result p0

    return p0
.end method

.method public o000Oo()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000OoOO()Z

    move-result p0

    return p0
.end method

.method public o000Oo0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000O0O()Z

    move-result p0

    return p0
.end method

.method public o000Oo00()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000Oo0O()Z

    move-result p0

    return p0
.end method

.method public o000Oo0O()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000Oo0o()Z

    move-result p0

    return p0
.end method

.method public o000Oo0o()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000Oo()Z

    move-result p0

    return p0
.end method

.method public o000OoO()Z
    .locals 1

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->oo00oO()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "NO_PIXEL"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public o000OoOO()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000OoOo()Z

    move-result p0

    return p0
.end method

.method public o000OoOo()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000Ooo0()Z

    move-result p0

    return p0
.end method

.method public o000Ooo()Z
    .locals 1

    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOoo0:Z

    if-eqz v0, :cond_0

    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o000oOoO:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->oo00oO()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "PRO"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public o000Ooo0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000OooO()Z

    move-result p0

    return p0
.end method

.method public o000OooO()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000Oooo()Z

    move-result p0

    return p0
.end method

.method public o000Oooo()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000o000()Z

    move-result p0

    return p0
.end method

.method public o000o00()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000o00o()Z

    move-result p0

    if-nez p0, :cond_1

    sget-boolean p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o0O00:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public o000o000()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000o00O()Z

    move-result p0

    return p0
.end method

.method public o000o00O()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->oooo00o()Z

    move-result p0

    return p0
.end method

.method public o000o00o()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000o0O0()Z

    move-result p0

    return p0
.end method

.method public o000o0O()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000o0Oo()Z

    move-result p0

    return p0
.end method

.method public o000o0O0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000o0OO()Z

    move-result p0

    return p0
.end method

.method public o000o0OO()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000o0o0()Z

    move-result p0

    return p0
.end method

.method public o000o0Oo()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000o0o()Z

    move-result p0

    return p0
.end method

.method public o000o0o()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000o0oO()Z

    move-result p0

    return p0
.end method

.method public o000o0o0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00O0OoO()Z

    move-result p0

    return p0
.end method

.method public o000o0oO()Z
    .locals 3

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOooo()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000o0oo()Z

    move-result p0

    return p0
.end method

.method public o000o0oo()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000oOoo()Z

    move-result p0

    return p0
.end method

.method public o000oOoO()I
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->OoooOOo()I

    move-result p0

    return p0
.end method

.method public o000oOoo()Z
    .locals 5

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO0O0/OooO0o0/OooO00o/OooO00o;->OooO00o:LOooO0O0/OooO0o0/OooO00o/OooO00o;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "miuicamera.dualvideo.show"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000oo00()Z

    move-result p0

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o000oOoO()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    :cond_0
    move v2, v4

    :cond_1
    return v2

    :cond_2
    if-nez v1, :cond_3

    if-eqz p0, :cond_4

    :cond_3
    move v2, v4

    :cond_4
    return v2
.end method

.method public o000oo()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00O0()Z

    move-result p0

    return p0
.end method

.method public o000oo0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000oo0O()Z

    move-result p0

    return p0
.end method

.method public o000oo00()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000oo0()Z

    move-result p0

    return p0
.end method

.method public o000oo0O()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000oo()Z

    move-result p0

    return p0
.end method

.method public o000oo0o()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000ooO0()Z

    move-result p0

    return p0
.end method

.method public o000ooO()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000ooOO()Z

    move-result p0

    return p0
.end method

.method public o000ooO0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000ooO()Z

    move-result p0

    return p0
.end method

.method public o000ooOO()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000ooo0()Z

    move-result p0

    return p0
.end method

.method public o000ooo()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000oooo()Z

    move-result p0

    return p0
.end method

.method public o000ooo0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000oooO()Z

    move-result p0

    return p0
.end method

.method public o000oooO()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00O0000()Z

    move-result p0

    return p0
.end method

.method public o000oooo()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o0O0ooO()Z

    move-result p0

    return p0
.end method

.method public o00O()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00OO0OO()Z

    move-result p0

    return p0
.end method

.method public o00O0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00O0O0O()Z

    move-result p0

    return p0
.end method

.method public o00O00()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00O00Oo()Z

    move-result p0

    return p0
.end method

.method public o00O000()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->oOO00O()Z

    move-result p0

    return p0
.end method

.method public o00O0000()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00O000()Z

    move-result p0

    return p0
.end method

.method public o00O000o()Z
    .locals 1

    invoke-static {}, Lcom/android/camera/Util;->isGlobalVersion()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00O00OO()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public o00O00O()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00O00o0()Z

    move-result p0

    return p0
.end method

.method public o00O00OO()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00O00oO()Z

    move-result p0

    return p0
.end method

.method public o00O00Oo()Z
    .locals 1

    const-string p0, "ro.product.cpu.abi"

    const-string v0, ""

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "64"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v0, "ginkgo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v0, "willow"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public o00O00o()Z
    .locals 1

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000oo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o0ooOOo()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public o00O00o0()Z
    .locals 2

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000oo()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o0ooOOo()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public o00O00oO()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00O0O00()Z

    move-result p0

    return p0
.end method

.method public o00O0O(ZZLjava/lang/String;)Ljava/util/List;
    .locals 2

    const/4 v0, 0x0

    const-string v1, "capture_inner"

    invoke-direct {p0, v0, v1, p3}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00OoOo(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p2, :cond_0

    const-string p2, "video_inner"

    invoke-direct {p0, v0, p2, p3}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00OoOo(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->OoooooO()[Ljava/lang/String;

    move-result-object p0

    aget-object p3, p0, v0

    :cond_1
    const-string p0, ":"

    invoke-virtual {p3, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public o00O0O0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00O0OO0()Z

    move-result p0

    return p0
.end method

.method public o00O0O00()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00O0O0o()Z

    move-result p0

    return p0
.end method

.method public o00O0O0O()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->oo0o0O0()Z

    move-result p0

    return p0
.end method

.method public o00O0O0o()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00O0OOO()Z

    move-result p0

    return p0
.end method

.method public o00O0OO()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->oo0oOO0()Z

    move-result p0

    return p0
.end method

.method public o00O0OO0()Z
    .locals 3

    const-string v0, "miuicamera.mimoji.show"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00O0OOo()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public o00O0OOO()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00O0Oo()Z

    move-result p0

    return p0
.end method

.method public o00O0OOo()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00O0Ooo()Z

    move-result p0

    return p0
.end method

.method public o00O0Oo(Ljava/lang/String;)Z
    .locals 6

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00oo0o()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x2

    if-lt v4, v5, :cond_1

    aget-object v4, v3, v1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p0, 0x1

    aget-object p0, v3, p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public o00O0Oo0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00O0o00()Z

    move-result p0

    return p0
.end method

.method public o00O0OoO()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00O0o0()Z

    move-result p0

    return p0
.end method

.method public o00O0Ooo()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00O0o0o()Z

    move-result p0

    return p0
.end method

.method public o00O0o()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00O0oo()Z

    move-result p0

    return p0
.end method

.method public o00O0o0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00O0oOO()Z

    move-result p0

    return p0
.end method

.method public o00O0o00()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00O0o()Z

    move-result p0

    return p0
.end method

.method public o00O0o0O()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00O0oOo()Z

    move-result p0

    return p0
.end method

.method public o00O0o0o()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00O0oo0()Z

    move-result p0

    return p0
.end method

.method public o00O0oO()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00O0ooo()Z

    move-result p0

    return p0
.end method

.method public o00O0oOO()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00O()Z

    move-result p0

    return p0
.end method

.method public o00O0oOo()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00OO00o()Z

    move-result p0

    return p0
.end method

.method public o00O0oo()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00OO0O0()Z

    move-result p0

    return p0
.end method

.method public o00O0oo0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00OO0()Z

    move-result p0

    return p0
.end method

.method public o00O0ooo()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00OO0O()Z

    move-result p0

    return p0
.end method

.method public o00OO()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00OOOO()Z

    move-result p0

    return p0
.end method

.method public o00OO0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00OO0oo()Z

    move-result p0

    return p0
.end method

.method public o00OO000()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00OO0o0()Z

    move-result p0

    return p0
.end method

.method public o00OO00O()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00OO0o()Z

    move-result p0

    return p0
.end method

.method public o00OO00o()Z
    .locals 1

    invoke-static {}, Lcom/android/camera/Util;->isGlobalVersion()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/Util;->isLocaleChinese()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00OO0oO()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public o00OO0O()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00OO()Z

    move-result p0

    return p0
.end method

.method public o00OO0O0()Z
    .locals 3

    invoke-static {}, Lcom/android/camera/Util;->isGlobalVersion()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOo0o:Z

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->oo0O()Z

    move-result p0

    return p0
.end method

.method public o00OO0OO()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00OOO00()Z

    move-result p0

    return p0
.end method

.method public o00OO0o()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00OOO0O()Z

    move-result p0

    return p0
.end method

.method public o00OO0o0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00OOO0()Z

    move-result p0

    return p0
.end method

.method public o00OO0oO()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00OOO()Z

    move-result p0

    return p0
.end method

.method public o00OOO()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00OOOoO()Z

    move-result p0

    return p0
.end method

.method public o00OOO0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->oOooo0o()Z

    move-result p0

    return p0
.end method

.method public o00OOO00()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00OOOOo()Z

    move-result p0

    return p0
.end method

.method public o00OOO0O()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00OOOo0()Z

    move-result p0

    return p0
.end method

.method public o00OOOO()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00OOooO()Z

    move-result p0

    return p0
.end method

.method public o00OOOO0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00OOoo()Z

    move-result p0

    return p0
.end method

.method public o00OOOOo()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00OoOoO()Z

    move-result p0

    return p0
.end method

.method public o00OOOo()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00Oo0Oo()Z

    move-result p0

    return p0
.end method

.method public o00OOOo0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00Oo0O()Z

    move-result p0

    return p0
.end method

.method public o00OOOoO()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00Oo0o0()Z

    move-result p0

    return p0
.end method

.method public o00OOoo()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00Oo0o()Z

    move-result p0

    return p0
.end method

.method public o00OOooO()Z
    .locals 1

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00OOOo0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->oOooo0o()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00OoO0o()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public o00OOooo()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOOo0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00OoOO0()Z

    move-result p0

    return p0
.end method

.method public o00Oo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00o00Oo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public o00Oo0(I)[F
    .locals 5

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o000000o()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1.0:2.0"

    goto :goto_0

    :cond_0
    const-string v0, "1.0"

    :goto_0
    const/16 v1, 0xa1

    const/4 v2, 0x0

    const-string v3, "capture"

    const/4 v4, 0x1

    if-eq p1, v1, :cond_2

    const/16 v1, 0xa2

    if-eq p1, v1, :cond_2

    const/16 v1, 0xa9

    if-eq p1, v1, :cond_2

    const/16 v1, 0xb4

    if-eq p1, v1, :cond_2

    const/16 v1, 0xb7

    if-eq p1, v1, :cond_2

    const/16 v1, 0xbc

    if-eq p1, v1, :cond_1

    const/16 v1, 0xcc

    if-eq p1, v1, :cond_2

    packed-switch p1, :pswitch_data_0

    :goto_1
    move p1, v2

    goto :goto_2

    :pswitch_0
    const-string v3, "pixel"

    const-string v0, "1:2"

    goto :goto_1

    :pswitch_1
    const-string v3, "supernight"

    const-string v0, "0.6:1:2"

    goto :goto_1

    :cond_1
    const-string v3, "supermoon"

    const-string v0, "5:60"

    goto :goto_1

    :cond_2
    :pswitch_2
    move p1, v4

    :goto_2
    invoke-direct {p0, v4, v3, v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00OoOo(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_3

    const-string p1, "video"

    const-string v1, ""

    invoke-direct {p0, v4, p1, v1}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00OoOo(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    move-object v0, p0

    :cond_3
    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [F

    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    aput v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0xac
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public o00Oo00()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00OooO()Z

    move-result p0

    return p0
.end method

.method public o00Oo000()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00Ooo0()Z

    move-result p0

    return p0
.end method

.method public o00Oo00o()Z
    .locals 1

    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOoo0:Z

    if-eqz v0, :cond_0

    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o000oOoO:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->oo00oO()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "ULTRA_WIDE"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public o00Oo0O()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00Ooooo()Z

    move-result p0

    return p0
.end method

.method public o00Oo0O0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00OoooO()Z

    move-result p0

    return p0
.end method

.method public o00Oo0Oo()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00o0000()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public o00Oo0o0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00o000()Z

    move-result p0

    return p0
.end method

.method public o00Oo0oO()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->oo00oO()Z

    move-result p0

    return p0
.end method

.method public o00Oo0oo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00o00()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public o00OoO()Z
    .locals 2

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00ooO00()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00ooO()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public o00OoO0()Z
    .locals 1

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o0000o0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00O00()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000o00O()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public o00OoO00()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00o00o0()Z

    move-result p0

    return p0
.end method

.method public o00OoO0o()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00o00oO()Z

    move-result p0

    return p0
.end method

.method public o00OoOO()I
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00o0()I

    move-result p0

    return p0
.end method

.method public o00OoOO0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00ooo0()Z

    move-result p0

    return p0
.end method

.method public o00OoOOO()I
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00o0O00()I

    move-result p0

    return p0
.end method

.method public o00OoOOo()I
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00o0O0()I

    move-result p0

    return p0
.end method

.method public o00OoOo0()I
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00o0O0O()I

    move-result p0

    return p0
.end method

.method public o00OoOoO()Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1e

    if-ne v0, v2, :cond_1

    sget-boolean v2, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OoooO0:Z

    if-nez v2, :cond_0

    sget-boolean v2, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OoooO0O:Z

    if-eqz v2, :cond_1

    :cond_0
    return v1

    :cond_1
    const/16 v2, 0x1c

    if-lt v0, v2, :cond_2

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00Ooo00()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public o00OoOoo()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00o0OO0()Z

    move-result p0

    return p0
.end method

.method public o00Ooo(ZZLjava/lang/String;)Ljava/util/List;
    .locals 2

    const/4 v0, 0x0

    const-string v1, "capture_ruler"

    invoke-direct {p0, v0, v1, p3}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00OoOo(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p2, :cond_0

    const-string p2, "video_ruler"

    invoke-direct {p0, v0, p2, p3}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00OoOo(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->OoooooO()[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aget-object p3, p0, p1

    :cond_1
    const-string p0, ":"

    invoke-virtual {p3, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public o00Ooo0()I
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00o0OOo()I

    move-result p0

    return p0
.end method

.method public o00Ooo00()I
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00o0OO()I

    move-result p0

    return p0
.end method

.method public o00Ooo0O()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00o0Oo0()Z

    move-result p0

    return p0
.end method

.method public o00Ooo0o()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00o0Oo()Z

    move-result p0

    return p0
.end method

.method public o00OooO()Z
    .locals 4

    invoke-static {}, Lcom/android/camera/Display;->getWindowHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/android/camera/Display;->getWindowWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x40055555

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f947ae147ae147bL    # 0.02

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00o0Ooo()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public o00OooO0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00o0OoO()Z

    move-result p0

    return p0
.end method

.method public o00OooOO()Z
    .locals 2

    invoke-static {}, Lcom/android/camera/Display;->getWindowHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/android/camera/Display;->getWindowWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x400aaaab

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00o0o00()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public o00OooOo()Z
    .locals 4

    invoke-static {}, Lcom/android/camera/Display;->getWindowHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/android/camera/Display;->getWindowWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x40071c72

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f947ae147ae147bL    # 0.02

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00o0o0O()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public o00OoooO()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00o0o()Z

    move-result p0

    return p0
.end method

.method public o00Ooooo()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00o0oO0()Z

    move-result p0

    return p0
.end method

.method public o00o()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00oo0()Z

    move-result p0

    return p0
.end method

.method public o00o0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00oO0()Z

    move-result p0

    return p0
.end method

.method public o00o00()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_0

    invoke-direct {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00O0()Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00o0oOo()Z

    move-result p0

    return p0
.end method

.method public o00o000()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00o0oOO()Z

    move-result p0

    return p0
.end method

.method public o00o0000()Z
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00o0oO()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o0000o0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00000Oo()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public o00o000O()Z
    .locals 4

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o000o()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00()Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00o0oOo()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o000o()Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0xa3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    if-eq p0, v0, :cond_1

    const/16 p0, 0xa5

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    if-ne p0, v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p0

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result p0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double p0, v0, v2

    if-ltz p0, :cond_2

    sget-object p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o0:Ljava/lang/String;

    const-string v0, "Algo up enabled for mm-camera"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_2
    sget-object p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o0:Ljava/lang/String;

    const-string v0, "Algo up disabled for mm-camera"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public o00o000o()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00o0oo0()Z

    move-result p0

    return p0
.end method

.method public o00o00Oo()Z
    .locals 1

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00o()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string p0, "close.append.yuv"

    invoke-static {p0, v0}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public o00o00o()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00oO00O()Z

    move-result p0

    return p0
.end method

.method public o00o00o0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00oO000()Z

    move-result p0

    return p0
.end method

.method public o00o00oO()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00oO00o()Z

    move-result p0

    return p0
.end method

.method public o00o00oo()Z
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oOo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o0000o0()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public o00o0O()I
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00Ooo()I

    move-result p0

    return p0
.end method

.method public o00o0O0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o0oOOo()Z

    move-result p0

    return p0
.end method

.method public o00o0O00()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00oO0O0()Z

    move-result p0

    return p0
.end method

.method public o00o0O0O()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o0ooOO()Z

    move-result p0

    return p0
.end method

.method public o00o0OO()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->Oooo00o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00oOOO0()Z

    move-result p0

    return p0
.end method

.method public o00o0OO0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00oOO()Z

    move-result p0

    return p0
.end method

.method public o00o0OOO()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00oOOOO()Z

    move-result p0

    return p0
.end method

.method public o00o0OOo()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00oOOOo()Z

    move-result p0

    return p0
.end method

.method public o00o0Oo()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00oOOoO()Z

    move-result p0

    return p0
.end method

.method public o00o0Oo0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00oOOo0()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o000oOoO()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public o00o0OoO()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00oOo00()Z

    move-result p0

    return p0
.end method

.method public o00o0Ooo()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00oOooO()Z

    move-result p0

    return p0
.end method

.method public o00o0o()Z
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oOoOO()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o0000o0()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public o00o0o00()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00oOo0O()Z

    move-result p0

    return p0
.end method

.method public o00o0o0O()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00oOo0o()Z

    move-result p0

    return p0
.end method

.method public o00o0o0o()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00oOoO0()Z

    move-result p0

    return p0
.end method

.method public o00o0oO()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00oOoO()Z

    move-result p0

    return p0
.end method

.method public o00o0oO0()Z
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oOoOo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o0000o0()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public o00o0oOO()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00oOoo0()Z

    move-result p0

    return p0
.end method

.method public o00o0oOo()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00oOooo()Z

    move-result p0

    return p0
.end method

.method public o00o0oo()Z
    .locals 6

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooO()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mfnr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    if-lez v1, :cond_3

    array-length v1, p0

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p0, v3

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v5, v4, v0

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 p0, 0x1

    aget-object p0, v4, p0

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public o00o0oo0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00oo00O()Z

    move-result p0

    return p0
.end method

.method public o00o0ooo()Z
    .locals 6

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooO()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "notelemfnr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    if-lez v1, :cond_3

    array-length v1, p0

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p0, v3

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v5, v4, v0

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 p0, 0x1

    aget-object p0, v4, p0

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public o00oO0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00oo0oO()Z

    move-result p0

    return p0
.end method

.method public o00oO000()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o00oO00O()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00oo0O()Z

    move-result p0

    return p0
.end method

.method public o00oO00o()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00oo0Oo()Z

    move-result p0

    return p0
.end method

.method public o00oO0O()I
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00o0O()I

    move-result p0

    return p0
.end method

.method public o00oO0O0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o0O0o()Z

    move-result p0

    return p0
.end method

.method public o00oOO()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00ooO0O()Z

    move-result p0

    return p0
.end method

.method public o00oOOO0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00ooO0o()Z

    move-result p0

    return p0
.end method

.method public o00oOOOO()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00ooO()Z

    move-result p0

    return p0
.end method

.method public o00oOOOo()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00ooOO0()Z

    move-result p0

    return p0
.end method

.method public o00oOOo()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00O0oO()Z

    move-result p0

    return p0
.end method

.method public o00oOOo0()Z
    .locals 4

    sget-wide v0, Lcom/android/camera/Util;->TOTAL_MEMORY_GB:J

    const-wide/16 v2, 0x6

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00ooOO()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public o00oOOoO()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00ooOOo()Z

    move-result p0

    return p0
.end method

.method public o00oOo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o00oOo00()Z
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getIntentType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o000oOoO()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00ooOo0()Z

    move-result p0

    return p0
.end method

.method public o00oOo0O()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00ooOoo()Z

    move-result p0

    return p0
.end method

.method public o00oOo0o()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00ooo00()Z

    move-result p0

    return p0
.end method

.method public o00oOoO()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00ooo0()Z

    move-result p0

    return p0
.end method

.method public o00oOoO0()Z
    .locals 6

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooO()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "telesr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    if-lez v1, :cond_3

    array-length v1, p0

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p0, v3

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v5, v4, v0

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 p0, 0x1

    aget-object p0, v4, p0

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public o00oOoOO()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00ooo0O()Z

    move-result p0

    return p0
.end method

.method public o00oOoOo()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00ooo0o()Z

    move-result p0

    return p0
.end method

.method public o00oOoo()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00O00O()Z

    move-result p0

    return p0
.end method

.method public o00oOoo0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00oooO()Z

    move-result p0

    return p0
.end method

.method public o00oOooO(I)Z
    .locals 1

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa2

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00ooOoO()Z

    move-result p0

    return p0
.end method

.method public o00oOooo()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00oooOO()Z

    move-result p0

    return p0
.end method

.method public o00oo()Z
    .locals 3

    const-string v0, "miuicamera.sat.video"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o0:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sat video debug prop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o000oOoO:Z

    if-eqz v0, :cond_1

    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOoo:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o0OoOoOo()Z

    move-result p0

    return p0
.end method

.method public o00oo0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00oooo()Z

    move-result p0

    return p0
.end method

.method public o00oo000()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00oo0OO()Z

    move-result p0

    return p0
.end method

.method public o00oo00O()Z
    .locals 4

    sget-wide v0, Lcom/android/camera/Util;->TOTAL_MEMORY_GB:J

    const-wide/16 v2, 0x6

    cmp-long v0, v0, v2

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00oooo0()Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/mi/device/Common;->o00oooOo()Z

    move-result p0

    return p0
.end method

.method public o00oo0O()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o0()Z

    move-result p0

    return p0
.end method

.method public o00oo0O0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00ooooo()Z

    move-result p0

    return p0
.end method

.method public o00oo0OO()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00ooooO()Z

    move-result p0

    return p0
.end method

.method public o00oo0Oo()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o0O00000()Z

    move-result p0

    return p0
.end method

.method public o00oo0o()Z
    .locals 1

    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o0O0000o()Z

    move-result p0

    return p0
.end method

.method public o00oo0o0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o0O0000O()Z

    move-result p0

    return p0
.end method

.method public o00oo0oO()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o0O000()Z

    move-result p0

    return p0
.end method

.method public o00ooO()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o0O000o()Z

    move-result p0

    return p0
.end method

.method public o00ooO0()Z
    .locals 3

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOO0o()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    if-lez v0, :cond_1

    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    move v1, p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1
.end method

.method public o00ooO00()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o0O000Oo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public o00ooO0O()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o0OoOoOO()Z

    move-result p0

    return p0
.end method

.method public o00ooO0o()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o0O000o0()Z

    move-result p0

    return p0
.end method

.method public o00ooOO0()Z
    .locals 1

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00OOOo0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->oOooo0o()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00OOooO()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00OOOoO()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public o0O00o0()Z
    .locals 2

    invoke-static {}, Lcom/android/camera/Display;->getWindowHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/android/camera/Display;->getWindowWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x400e38e4

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00o0o0o()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public o0O0O00()I
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o0OOO0o()I

    move-result p0

    return p0
.end method

.method public o0O0o()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o0O000O()Z

    move-result p0

    return p0
.end method

.method public o0O0ooO()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00O000o()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public o0OO00O()I
    .locals 1

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o0000()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00000Oo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o0000o0()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o0ooOOo()I

    move-result p0

    return p0
.end method

.method public o0OOO0o()[F
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00oO0O()[F

    move-result-object p0

    return-object p0
.end method

.method public o0Oo0oo()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o0ooOO0()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public o0OoO0o()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000OO0o()Z

    move-result p0

    return p0
.end method

.method public o0OoOo0(I)I
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00O0O()I

    move-result p0

    if-gez p0, :cond_0

    return p1

    :cond_0
    return p0
.end method

.method public o0o0Oo()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00OOOo()Z

    move-result p0

    return p0
.end method

.method public o0oOO()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00o00O0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public o0oOOo()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00ooO00()Z

    move-result p0

    return p0
.end method

.method public o0ooOO()Z
    .locals 1

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o0000o0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o0000o0O()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00ooO0()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public o0ooOO0()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00ooo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public o0ooOoO()[F
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00oO0o()[F

    move-result-object p0

    return-object p0
.end method

.method public oOO00O()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00O00o()Z

    move-result p0

    return p0
.end method

.method public oOooo0o()Z
    .locals 1

    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00OOOo0()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00Oo00o()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public oo000o()Landroid/util/Size;
    .locals 2

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOoO()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Landroid/util/Size;

    const/16 v0, 0x1f40

    const/16 v1, 0x1770

    invoke-direct {p0, v0, v1}, Landroid/util/Size;-><init>(II)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OoooOo0()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00oO0o(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public oo00o()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00O0O0()Z

    move-result p0

    return p0
.end method

.method public oo00oO()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00o0oo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public oo0O()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00OOOO0()Z

    move-result p0

    return p0
.end method

.method public oo0o0O0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00O0Oo0()Z

    move-result p0

    return p0
.end method

.method public oo0o0Oo()I
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o0ooOoO()I

    move-result p0

    return p0
.end method

.method public oo0oOO0()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00oOOo()Z

    move-result p0

    return p0
.end method

.method public oooo00o()Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00oo:Lcom/mi/device/Common;

    invoke-virtual {p0}, Lcom/mi/device/Common;->o000o0O()Z

    move-result p0

    return p0
.end method
