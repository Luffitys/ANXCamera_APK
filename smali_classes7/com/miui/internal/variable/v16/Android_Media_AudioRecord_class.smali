.class public Lcom/miui/internal/variable/v16/Android_Media_AudioRecord_class;
.super Lcom/miui/internal/variable/Android_Media_AudioRecord_class;
.source ""


# static fields
.field private static final setParameters:Lmiui/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-class v0, Landroid/media/AudioRecord;

    const-string v1, "setParameters"

    const-string v2, "(Ljava/lang/String;)I"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lcom/miui/internal/variable/v16/Android_Media_AudioRecord_class;->setParameters:Lmiui/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class;-><init>()V

    return-void
.end method


# virtual methods
.method public isExtraParamSupported()Z
    .locals 0

    sget-object p0, Lcom/miui/internal/variable/v16/Android_Media_AudioRecord_class;->setParameters:Lmiui/reflect/Method;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setParameters(Landroid/media/AudioRecord;Ljava/lang/String;)I
    .locals 3

    sget-object p0, Lcom/miui/internal/variable/v16/Android_Media_AudioRecord_class;->setParameters:Lmiui/reflect/Method;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, p1, v1}, Lmiui/reflect/Method;->invokeInt(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
