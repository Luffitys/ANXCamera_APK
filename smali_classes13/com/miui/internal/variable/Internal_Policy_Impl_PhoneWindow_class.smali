.class public abstract Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class;
.super Lcom/miui/internal/util/ClassProxy;
.source "Internal_Policy_Impl_PhoneWindow_class.java"

# interfaces
.implements Lcom/miui/internal/variable/IManagedClassProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/internal/util/ClassProxy<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/miui/internal/variable/IManagedClassProxy;"
    }
.end annotation


# static fields
.field private static final PhoneWindow_ClassName:Ljava/lang/String;

.field protected static final TARGET_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_9

    const-string v0, "com.android.internal.policy.PhoneWindow"

    goto :goto_b

    :cond_9
    const-string v0, "com.android.internal.policy.impl.PhoneWindow"

    :goto_b
    sput-object v0, Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class;->PhoneWindow_ClassName:Ljava/lang/String;

    invoke-static {}, Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class;->getTargetClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class;->TARGET_CLASS:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class;->TARGET_CLASS:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/miui/internal/util/ClassProxy;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private static getTargetClass()Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class;->PhoneWindow_ClassName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "com.android.internal.policy.impl.PhoneWindow"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method
