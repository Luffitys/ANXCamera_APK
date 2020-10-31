.class Lmiui/push/IQ$2;
.super Lmiui/push/IQ;
.source "IQ.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/push/IQ;->createErrorResponse(Lmiui/push/IQ;Lmiui/push/XMPPError;)Lmiui/push/IQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$request:Lmiui/push/IQ;


# direct methods
.method constructor <init>(Lmiui/push/IQ;)V
    .registers 2

    iput-object p1, p0, Lmiui/push/IQ$2;->val$request:Lmiui/push/IQ;

    invoke-direct {p0}, Lmiui/push/IQ;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/push/IQ$2;->val$request:Lmiui/push/IQ;

    invoke-virtual {v0}, Lmiui/push/IQ;->getChildElementXML()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
