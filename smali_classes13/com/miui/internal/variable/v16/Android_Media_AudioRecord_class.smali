.class public Lcom/miui/internal/variable/v16/Android_Media_AudioRecord_class;
.super Lcom/miui/internal/variable/Android_Media_AudioRecord_class;
.source "Android_Media_AudioRecord_class.java"


# static fields
.field private static final setParameters:Lmiui/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-class v1, Landroid/media/AudioRecord;

    const-string v2, "setParameters"

    const-string v3, "(Ljava/lang/String;)I"

    invoke-static {v1, v2, v3}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1
    :try_end_b
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_1 .. :try_end_b} :catch_d

    move-object v0, v1

    goto :goto_e

    :catch_d
    move-exception v1

    :goto_e
    sput-object v0, Lcom/miui/internal/variable/v16/Android_Media_AudioRecord_class;->setParameters:Lmiui/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class;-><init>()V

    return-void
.end method


# virtual methods
.method public isExtraParamSupported()Z
    .registers 2

    sget-object v0, Lcom/miui/internal/variable/v16/Android_Media_AudioRecord_class;->setParameters:Lmiui/reflect/Method;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public setParameters(Landroid/media/AudioRecord;Ljava/lang/String;)I
    .registers 7

    sget-object v0, Lcom/miui/internal/variable/v16/Android_Media_AudioRecord_class;->setParameters:Lmiui/reflect/Method;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    return v0

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, p1, v2}, Lmiui/reflect/Method;->invokeInt(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
