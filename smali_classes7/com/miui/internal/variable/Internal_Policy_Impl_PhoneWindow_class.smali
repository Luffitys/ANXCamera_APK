.class public abstract Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class;
.super Lcom/miui/internal/util/ClassProxy;
.source ""

# interfaces
.implements Lcom/miui/internal/variable/IManagedClassProxy;


# static fields
.field private static final PhoneWindow_ClassName:Ljava/lang/String;

.field protected static final TARGET_CLASS:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const-string v0, "com.android.internal.policy.PhoneWindow"

    goto :goto_0

    :cond_0
    const-string v0, "com.android.internal.policy.impl.PhoneWindow"

    :goto_0
    sput-object v0, Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class;->PhoneWindow_ClassName:Ljava/lang/String;

    invoke-static {}, Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class;->getTargetClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class;->TARGET_CLASS:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class;->TARGET_CLASS:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/miui/internal/util/ClassProxy;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private static getTargetClass()Ljava/lang/Class;
    .locals 3

    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class;->PhoneWindow_ClassName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "com.android.internal.policy.impl.PhoneWindow"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method
