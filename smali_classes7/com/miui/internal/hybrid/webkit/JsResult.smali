.class public Lcom/miui/internal/hybrid/webkit/JsResult;
.super Lmiui/hybrid/JsResult;
.source ""


# instance fields
.field private mJsResult:Landroid/webkit/JsResult;


# direct methods
.method public constructor <init>(Landroid/webkit/JsResult;)V
    .locals 0

    invoke-direct {p0}, Lmiui/hybrid/JsResult;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/hybrid/webkit/JsResult;->mJsResult:Landroid/webkit/JsResult;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/JsResult;->mJsResult:Landroid/webkit/JsResult;

    invoke-virtual {p0}, Landroid/webkit/JsResult;->cancel()V

    return-void
.end method

.method public confirm()V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/JsResult;->mJsResult:Landroid/webkit/JsResult;

    invoke-virtual {p0}, Landroid/webkit/JsResult;->confirm()V

    return-void
.end method
