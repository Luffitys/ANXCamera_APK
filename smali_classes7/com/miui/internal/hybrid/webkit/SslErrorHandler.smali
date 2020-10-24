.class public Lcom/miui/internal/hybrid/webkit/SslErrorHandler;
.super Lmiui/hybrid/SslErrorHandler;
.source ""


# instance fields
.field private mSslErrorHandler:Landroid/webkit/SslErrorHandler;


# direct methods
.method public constructor <init>(Landroid/webkit/SslErrorHandler;)V
    .locals 0

    invoke-direct {p0}, Lmiui/hybrid/SslErrorHandler;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/hybrid/webkit/SslErrorHandler;->mSslErrorHandler:Landroid/webkit/SslErrorHandler;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/SslErrorHandler;->mSslErrorHandler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {p0}, Landroid/webkit/SslErrorHandler;->cancel()V

    return-void
.end method

.method public proceed()V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/webkit/SslErrorHandler;->mSslErrorHandler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {p0}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method
