.class public Lmiui/os/GlobalOperator;
.super Ljava/lang/Object;
.source "GlobalOperator.java"


# static fields
.field private static final GLOBAL_OPERATOR_NAME:Ljava/lang/String;

.field private static final IS_SINGLE_SIM:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "ro.miui.customized.region"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/os/GlobalOperator;->GLOBAL_OPERATOR_NAME:Ljava/lang/String;

    const-string v0, "ro.miui.singlesim"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/os/GlobalOperator;->IS_SINGLE_SIM:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate GlobalOperator"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getName()Ljava/lang/String;
    .registers 2

    sget-object v0, Lmiui/os/GlobalOperator;->GLOBAL_OPERATOR_NAME:Ljava/lang/String;

    const-string v1, "ru"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, ""

    return-object v0

    :cond_d
    sget-object v0, Lmiui/os/GlobalOperator;->GLOBAL_OPERATOR_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static isSingleSim()Z
    .registers 2

    sget-object v0, Lmiui/os/GlobalOperator;->IS_SINGLE_SIM:Ljava/lang/String;

    const-string v1, "1"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
