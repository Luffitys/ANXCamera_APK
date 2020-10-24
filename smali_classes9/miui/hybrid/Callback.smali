.class public Lmiui/hybrid/Callback;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mJsCallback:Ljava/lang/String;

.field private mManager:Lcom/miui/internal/hybrid/HybridManager;

.field private mPageContext:Lmiui/hybrid/PageContext;


# direct methods
.method public constructor <init>(Lcom/miui/internal/hybrid/HybridManager;Lmiui/hybrid/PageContext;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/hybrid/Callback;->mManager:Lcom/miui/internal/hybrid/HybridManager;

    iput-object p2, p0, Lmiui/hybrid/Callback;->mPageContext:Lmiui/hybrid/PageContext;

    iput-object p3, p0, Lmiui/hybrid/Callback;->mJsCallback:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public callback(Lmiui/hybrid/Response;)V
    .locals 2

    iget-object v0, p0, Lmiui/hybrid/Callback;->mManager:Lcom/miui/internal/hybrid/HybridManager;

    iget-object v1, p0, Lmiui/hybrid/Callback;->mPageContext:Lmiui/hybrid/PageContext;

    iget-object p0, p0, Lmiui/hybrid/Callback;->mJsCallback:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p0}, Lcom/miui/internal/hybrid/HybridManager;->callback(Lmiui/hybrid/Response;Lmiui/hybrid/PageContext;Ljava/lang/String;)V

    return-void
.end method
