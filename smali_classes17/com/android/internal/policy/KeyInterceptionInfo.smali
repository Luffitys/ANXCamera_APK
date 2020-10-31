.class public Lcom/android/internal/policy/KeyInterceptionInfo;
.super Ljava/lang/Object;
.source "KeyInterceptionInfo.java"


# instance fields
.field public final layoutParamsPrivateFlags:I

.field public final layoutParamsType:I

.field public final windowTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/policy/KeyInterceptionInfo;->layoutParamsType:I

    iput p2, p0, Lcom/android/internal/policy/KeyInterceptionInfo;->layoutParamsPrivateFlags:I

    iput-object p3, p0, Lcom/android/internal/policy/KeyInterceptionInfo;->windowTitle:Ljava/lang/String;

    return-void
.end method
