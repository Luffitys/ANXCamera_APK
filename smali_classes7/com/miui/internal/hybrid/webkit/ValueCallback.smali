.class public Lcom/miui/internal/hybrid/webkit/ValueCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/hybrid/ValueCallback;


# instance fields
.field private mValueCallback:Landroid/webkit/ValueCallback;


# direct methods
.method public constructor <init>(Landroid/webkit/ValueCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/hybrid/webkit/ValueCallback;->mValueCallback:Landroid/webkit/ValueCallback;

    return-void
.end method


# virtual methods
.method public onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/ValueCallback;->mValueCallback:Landroid/webkit/ValueCallback;

    invoke-interface {p0, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    return-void
.end method
