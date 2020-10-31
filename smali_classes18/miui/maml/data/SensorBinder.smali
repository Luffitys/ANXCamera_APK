.class public Lmiui/maml/data/SensorBinder;
.super Lmiui/maml/data/VariableBinder;
.source "SensorBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/SensorBinder$Variable;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SensorBinder"

.field public static final TAG_NAME:Ljava/lang/String; = "SensorBinder"

.field private static final THRESHOLD:F = 0.1f


# instance fields
.field private mEnable:Z

.field private mPaused:Z

.field private mRate:I

.field private mRegistered:Z

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mThreshold:F

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/data/SensorBinder;->mEnable:Z

    const-string v0, "type"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/SensorBinder;->mType:Ljava/lang/String;

    const-string v0, "rate"

    const/4 v1, 0x3

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/maml/data/SensorBinder;->mRate:I

    const-string v0, "threshold"

    const v1, 0x3dcccccd    # 0.1f

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lmiui/maml/data/SensorBinder;->mThreshold:F

    const-string v0, "enable"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/maml/data/SensorBinder;->mEnable:Z

    :cond_34
    new-instance v1, Lmiui/maml/data/SensorBinder$1;

    invoke-direct {v1, p0}, Lmiui/maml/data/SensorBinder$1;-><init>(Lmiui/maml/data/SensorBinder;)V

    iput-object v1, p0, Lmiui/maml/data/SensorBinder;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p0, p1}, Lmiui/maml/data/SensorBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method static synthetic access$000(Lmiui/maml/data/SensorBinder;)F
    .registers 2

    iget v0, p0, Lmiui/maml/data/SensorBinder;->mThreshold:F

    return v0
.end method

.method private registerListener()V
    .registers 6

    iget-boolean v0, p0, Lmiui/maml/data/SensorBinder;->mEnable:Z

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lmiui/maml/data/SensorBinder;->mPaused:Z

    if-eqz v0, :cond_9

    goto :goto_1d

    :cond_9
    invoke-static {}, Lmiui/maml/data/MamlSensorManager;->getInstance()Lmiui/maml/data/MamlSensorManager;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/maml/data/SensorBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/maml/data/SensorBinder;->mType:Ljava/lang/String;

    iget v3, p0, Lmiui/maml/data/SensorBinder;->mRate:I

    iget-object v4, p0, Lmiui/maml/data/SensorBinder;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lmiui/maml/data/MamlSensorManager;->registerListener(Landroid/content/Context;Ljava/lang/String;ILandroid/hardware/SensorEventListener;)V

    return-void

    :cond_1d
    :goto_1d
    return-void
.end method

.method private unregisterListener()V
    .registers 4

    invoke-static {}, Lmiui/maml/data/MamlSensorManager;->getInstance()Lmiui/maml/data/MamlSensorManager;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/data/SensorBinder;->mType:Ljava/lang/String;

    iget-object v2, p0, Lmiui/maml/data/SensorBinder;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1, v2}, Lmiui/maml/data/MamlSensorManager;->unregisterListener(Ljava/lang/String;Landroid/hardware/SensorEventListener;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 1

    invoke-direct {p0}, Lmiui/maml/data/SensorBinder;->unregisterListener()V

    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->finish()V

    return-void
.end method

.method public init()V
    .registers 1

    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->init()V

    return-void
.end method

.method protected onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/SensorBinder$Variable;
    .registers 4

    new-instance v0, Lmiui/maml/data/SensorBinder$Variable;

    invoke-virtual {p0}, Lmiui/maml/data/SensorBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, p1, v1}, Lmiui/maml/data/SensorBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    return-object v0
.end method

.method protected bridge synthetic onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/VariableBinder$Variable;
    .registers 2

    invoke-virtual {p0, p1}, Lmiui/maml/data/SensorBinder;->onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/SensorBinder$Variable;

    move-result-object p1

    return-object p1
.end method

.method public pause()V
    .registers 2

    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->pause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/data/SensorBinder;->mPaused:Z

    invoke-direct {p0}, Lmiui/maml/data/SensorBinder;->unregisterListener()V

    return-void
.end method

.method public resume()V
    .registers 2

    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->resume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/data/SensorBinder;->mPaused:Z

    invoke-direct {p0}, Lmiui/maml/data/SensorBinder;->registerListener()V

    return-void
.end method

.method public turnOffSensorBinder()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/data/SensorBinder;->mEnable:Z

    invoke-direct {p0}, Lmiui/maml/data/SensorBinder;->unregisterListener()V

    return-void
.end method

.method public turnOnSensorBinder()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/data/SensorBinder;->mEnable:Z

    invoke-direct {p0}, Lmiui/maml/data/SensorBinder;->registerListener()V

    return-void
.end method
