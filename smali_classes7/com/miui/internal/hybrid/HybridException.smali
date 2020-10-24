.class public Lcom/miui/internal/hybrid/HybridException;
.super Ljava/lang/Exception;
.source ""


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mResponse:Lmiui/hybrid/Response;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lmiui/hybrid/Response;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lmiui/hybrid/Response;-><init>(I)V

    invoke-virtual {v0}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance v0, Lmiui/hybrid/Response;

    invoke-direct {v0, v1}, Lmiui/hybrid/Response;-><init>(I)V

    iput-object v0, p0, Lcom/miui/internal/hybrid/HybridException;->mResponse:Lmiui/hybrid/Response;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lmiui/hybrid/Response;

    invoke-direct {v0, p1, p2}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance v0, Lmiui/hybrid/Response;

    invoke-direct {v0, p1, p2}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/miui/internal/hybrid/HybridException;->mResponse:Lmiui/hybrid/Response;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lmiui/hybrid/Response;

    const/16 v1, 0xc8

    invoke-direct {v0, v1, p1}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance v0, Lmiui/hybrid/Response;

    invoke-direct {v0, v1, p1}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/miui/internal/hybrid/HybridException;->mResponse:Lmiui/hybrid/Response;

    return-void
.end method

.method public constructor <init>(Lmiui/hybrid/Response;)V
    .locals 1

    invoke-virtual {p1}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/internal/hybrid/HybridException;->mResponse:Lmiui/hybrid/Response;

    return-void
.end method


# virtual methods
.method public getResponse()Lmiui/hybrid/Response;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/HybridException;->mResponse:Lmiui/hybrid/Response;

    return-object p0
.end method
