.class Lcom/adobe/xmp/impl/XMPNode$1;
.super Ljava/lang/Object;
.source "XMPNode.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/xmp/impl/XMPNode;->iterateQualifier()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/xmp/impl/XMPNode;

.field final synthetic val$it:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/adobe/xmp/impl/XMPNode;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPNode$1;->this$0:Lcom/adobe/xmp/impl/XMPNode;

    iput-object p2, p0, Lcom/adobe/xmp/impl/XMPNode$1;->val$it:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lcom/adobe/xmp/impl/XMPNode$1;->val$it:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/adobe/xmp/impl/XMPNode$1;->val$it:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "remove() is not allowed due to the internal contraints"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
