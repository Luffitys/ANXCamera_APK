.class public Lmiui/maml/elements/TimepanelScreenElement;
.super Lmiui/maml/elements/ImageScreenElement;
.source "TimepanelScreenElement.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TimepanelScreenElement"

.field private static final M12:Ljava/lang/String; = "hh:mm"

.field private static final M24:Ljava/lang/String; = "kk:mm"

.field public static final TAG_NAME:Ljava/lang/String; = "Time"


# instance fields
.field private mBmpHeight:I

.field private mBmpWidth:I

.field protected mCalendar:Ljava/util/Calendar;

.field private mForceUpdate:Z

.field private mFormat:Ljava/lang/String;

.field private mFormatExp:Lmiui/maml/data/Expression;

.field private mFormatRaw:Ljava/lang/String;

.field private mLoadResourceFailed:Z

.field private mLocalizedZero:C

.field private mOldFormat:Ljava/lang/String;

.field private mOldSrc:Ljava/lang/String;

.field private mPreMinute:J

.field private mPreTime:Ljava/lang/CharSequence;

.field private mSpace:I

.field private mTimeZoneExp:Lmiui/maml/data/Expression;

.field private mUpdateTimeRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/text/DecimalFormatSymbols;->getInstance()Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v0

    iput-char v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mLocalizedZero:C

    new-instance v0, Lmiui/maml/elements/TimepanelScreenElement$1;

    invoke-direct {v0, p0}, Lmiui/maml/elements/TimepanelScreenElement$1;-><init>(Lmiui/maml/elements/TimepanelScreenElement;)V

    iput-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mUpdateTimeRunnable:Ljava/lang/Runnable;

    const-string v0, "format"

    invoke-virtual {p0, p1, v0}, Lmiui/maml/elements/TimepanelScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mFormatRaw:Ljava/lang/String;

    invoke-virtual {p0}, Lmiui/maml/elements/TimepanelScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "formatExp"

    invoke-virtual {p0, p1, v1}, Lmiui/maml/elements/TimepanelScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mFormatExp:Lmiui/maml/data/Expression;

    const-string v0, "space"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lmiui/maml/elements/TimepanelScreenElement;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/TimepanelScreenElement;->scale(D)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mSpace:I

    invoke-virtual {p0}, Lmiui/maml/elements/TimepanelScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "timeZoneId"

    invoke-virtual {p0, p1, v1}, Lmiui/maml/elements/TimepanelScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mTimeZoneExp:Lmiui/maml/data/Expression;

    return-void
.end method

.method static synthetic access$000(Lmiui/maml/elements/TimepanelScreenElement;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mLoadResourceFailed:Z

    return v0
.end method

.method static synthetic access$100(Lmiui/maml/elements/TimepanelScreenElement;)Lmiui/maml/data/Expression;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mTimeZoneExp:Lmiui/maml/data/Expression;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/maml/elements/TimepanelScreenElement;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lmiui/maml/elements/TimepanelScreenElement;->getFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lmiui/maml/elements/TimepanelScreenElement;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mForceUpdate:Z

    return v0
.end method

.method static synthetic access$400(Lmiui/maml/elements/TimepanelScreenElement;)Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mPreTime:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$402(Lmiui/maml/elements/TimepanelScreenElement;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2

    iput-object p1, p0, Lmiui/maml/elements/TimepanelScreenElement;->mPreTime:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$500(Lmiui/maml/elements/TimepanelScreenElement;C)Landroid/graphics/Bitmap;
    .registers 3

    invoke-direct {p0, p1}, Lmiui/maml/elements/TimepanelScreenElement;->getDigitBmp(C)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lmiui/maml/elements/TimepanelScreenElement;)I
    .registers 2

    iget v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mSpace:I

    return v0
.end method

.method static synthetic access$700(Lmiui/maml/elements/TimepanelScreenElement;)I
    .registers 2

    iget v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mBmpWidth:I

    return v0
.end method

.method static synthetic access$702(Lmiui/maml/elements/TimepanelScreenElement;I)I
    .registers 2

    iput p1, p0, Lmiui/maml/elements/TimepanelScreenElement;->mBmpWidth:I

    return p1
.end method

.method private createBitmap()V
    .registers 8

    const-string v0, "0123456789:"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_54

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Lmiui/maml/elements/TimepanelScreenElement;->getDigitBmp(C)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_33

    const/4 v5, 0x1

    iput-boolean v5, p0, Lmiui/maml/elements/TimepanelScreenElement;->mLoadResourceFailed:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to load digit bitmap: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TimepanelScreenElement"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_33
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ge v1, v5, :cond_3d

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    :cond_3d
    iget v5, p0, Lmiui/maml/elements/TimepanelScreenElement;->mBmpHeight:I

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_4b

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iput v5, p0, Lmiui/maml/elements/TimepanelScreenElement;->mBmpHeight:I

    :cond_4b
    if-nez v2, :cond_51

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v2

    :cond_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_54
    mul-int/lit8 v3, v1, 0x5

    iget v4, p0, Lmiui/maml/elements/TimepanelScreenElement;->mSpace:I

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    iget v4, p0, Lmiui/maml/elements/TimepanelScreenElement;->mBmpHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    iget-object v4, p0, Lmiui/maml/elements/TimepanelScreenElement;->mBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v4, v3}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    iget v4, p0, Lmiui/maml/elements/TimepanelScreenElement;->mBmpHeight:I

    int-to-double v4, v4

    invoke-virtual {p0, v4, v5}, Lmiui/maml/elements/TimepanelScreenElement;->descale(D)D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lmiui/maml/elements/TimepanelScreenElement;->setActualHeight(D)V

    return-void
.end method

.method private getDigitBmp(C)Landroid/graphics/Bitmap;
    .registers 6

    invoke-virtual {p0}, Lmiui/maml/elements/TimepanelScreenElement;->getSrc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v0, "time.png"

    :cond_c
    const/16 v1, 0x3a

    if-ne p1, v1, :cond_13

    const-string v1, "dot"

    goto :goto_26

    :cond_13
    iget-char v1, p0, Lmiui/maml/elements/TimepanelScreenElement;->mLocalizedZero:C

    if-lt p1, v1, :cond_21

    add-int/lit8 v2, v1, 0x9

    if-gt p1, v2, :cond_21

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    goto :goto_22

    :cond_21
    move v1, p1

    :goto_22
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    :goto_26
    invoke-virtual {p0}, Lmiui/maml/elements/TimepanelScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-static {v0, v1}, Lmiui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private getFormat()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mFormatExp:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    iget-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mFormat:Ljava/lang/String;

    return-object v0
.end method

.method private setDateFormat()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mFormatRaw:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mFormatExp:Lmiui/maml/data/Expression;

    if-nez v0, :cond_20

    invoke-virtual {p0}, Lmiui/maml/elements/TimepanelScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "kk:mm"

    goto :goto_1d

    :cond_1b
    const-string v0, "hh:mm"

    :goto_1d
    iput-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mFormat:Ljava/lang/String;

    goto :goto_24

    :cond_20
    iget-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mFormatRaw:Ljava/lang/String;

    iput-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mFormat:Ljava/lang/String;

    :goto_24
    return-void
.end method

.method private updateTime(Z)V
    .registers 4

    invoke-virtual {p0}, Lmiui/maml/elements/TimepanelScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/TimepanelScreenElement;->mUpdateTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean p1, p0, Lmiui/maml/elements/TimepanelScreenElement;->mForceUpdate:Z

    iget-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mUpdateTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmiui/maml/elements/TimepanelScreenElement;->postInMainThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected doTick(J)V
    .registers 9

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ImageScreenElement;->doTick(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    invoke-virtual {p0}, Lmiui/maml/elements/TimepanelScreenElement;->getSrc()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lmiui/maml/elements/TimepanelScreenElement;->getFormat()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lmiui/maml/elements/TimepanelScreenElement;->mPreMinute:J

    cmp-long v4, v0, v4

    if-nez v4, :cond_29

    iget-object v4, p0, Lmiui/maml/elements/TimepanelScreenElement;->mOldSrc:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_29

    iget-object v4, p0, Lmiui/maml/elements/TimepanelScreenElement;->mOldFormat:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_33

    :cond_29
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lmiui/maml/elements/TimepanelScreenElement;->updateTime(Z)V

    iput-wide v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mPreMinute:J

    iput-object v2, p0, Lmiui/maml/elements/TimepanelScreenElement;->mOldSrc:Ljava/lang/String;

    iput-object v3, p0, Lmiui/maml/elements/TimepanelScreenElement;->mOldFormat:Ljava/lang/String;

    :cond_33
    return-void
.end method

.method public finish()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mPreTime:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mLoadResourceFailed:Z

    invoke-virtual {p0}, Lmiui/maml/elements/TimepanelScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/TimepanelScreenElement;->mUpdateTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0}, Lmiui/maml/elements/ImageScreenElement;->finish()V

    return-void
.end method

.method protected getBitmapWidth()I
    .registers 2

    iget v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mBmpWidth:I

    return v0
.end method

.method public init()V
    .registers 2

    invoke-super {p0}, Lmiui/maml/elements/ImageScreenElement;->init()V

    invoke-direct {p0}, Lmiui/maml/elements/TimepanelScreenElement;->setDateFormat()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mPreTime:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lmiui/maml/elements/TimepanelScreenElement;->createBitmap()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/maml/elements/TimepanelScreenElement;->updateTime(Z)V

    return-void
.end method

.method public pause()V
    .registers 1

    return-void
.end method

.method public resume()V
    .registers 2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/text/DecimalFormatSymbols;->getInstance()Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v0

    iput-char v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mLocalizedZero:C

    invoke-direct {p0}, Lmiui/maml/elements/TimepanelScreenElement;->setDateFormat()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/maml/elements/TimepanelScreenElement;->updateTime(Z)V

    return-void
.end method
