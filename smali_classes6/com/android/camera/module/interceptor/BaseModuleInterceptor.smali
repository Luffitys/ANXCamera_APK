.class public abstract Lcom/android/camera/module/interceptor/BaseModuleInterceptor;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final PRIORITY_BLOCK:I = 0x1

.field public static final PRIORITY_COMMON:I = 0x0

.field public static final PRIORITY_FIRST:I = 0x2

.field public static final SCOPE_ASD:I = 0x6

.field public static final SCOPE_CAPTURE_FINISH:I = 0x3

.field public static final SCOPE_CAPTURE_START:I = 0x2

.field public static final SCOPE_CAPTURE_TRIGGER:I = 0x1

.field public static final SCOPE_CONFIG_CHANGE:I = 0x5

.field public static final SCOPE_SAVE_FINISH:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBlocker()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/module/interceptor/BaseModuleInterceptor;->getPriority()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract getPriority()I
.end method

.method public abstract getScope()I
.end method

.method public intercept()V
    .locals 0

    return-void
.end method
