.class public Lcom/miui/internal/hybrid/webkit/JsResult;
.super Lmiui/hybrid/JsResult;
.source "JsResult.java"


# instance fields
.field private mJsResult:Landroid/webkit/JsResult;


# direct methods
.method public constructor <init>(Landroid/webkit/JsResult;)V
    .registers 2

    invoke-direct {p0}, Lmiui/hybrid/JsResult;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/hybrid/webkit/JsResult;->mJsResult:Landroid/webkit/JsResult;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/JsResult;->mJsResult:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->cancel()V

    return-void
.end method

.method public confirm()V
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/JsResult;->mJsResult:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    return-void
.end method
