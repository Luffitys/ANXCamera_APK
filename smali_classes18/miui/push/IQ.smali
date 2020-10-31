.class public Lmiui/push/IQ;
.super Lmiui/push/Packet;
.source "IQ.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/push/IQ$Type;
    }
.end annotation


# instance fields
.field private type:Lmiui/push/IQ$Type;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lmiui/push/Packet;-><init>()V

    sget-object v0, Lmiui/push/IQ$Type;->GET:Lmiui/push/IQ$Type;

    iput-object v0, p0, Lmiui/push/IQ;->type:Lmiui/push/IQ$Type;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0, p1}, Lmiui/push/Packet;-><init>(Landroid/os/Bundle;)V

    sget-object v0, Lmiui/push/IQ$Type;->GET:Lmiui/push/IQ$Type;

    iput-object v0, p0, Lmiui/push/IQ;->type:Lmiui/push/IQ$Type;

    const-string v0, "ext_iq_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/push/IQ$Type;->fromString(Ljava/lang/String;)Lmiui/push/IQ$Type;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/IQ;->type:Lmiui/push/IQ$Type;

    :cond_19
    return-void
.end method

.method public static createErrorResponse(Lmiui/push/IQ;Lmiui/push/XMPPError;)Lmiui/push/IQ;
    .registers 5

    invoke-virtual {p0}, Lmiui/push/IQ;->getType()Lmiui/push/IQ$Type;

    move-result-object v0

    sget-object v1, Lmiui/push/IQ$Type;->GET:Lmiui/push/IQ$Type;

    if-eq v0, v1, :cond_2c

    invoke-virtual {p0}, Lmiui/push/IQ;->getType()Lmiui/push/IQ$Type;

    move-result-object v0

    sget-object v1, Lmiui/push/IQ$Type;->SET:Lmiui/push/IQ$Type;

    if-ne v0, v1, :cond_11

    goto :goto_2c

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IQ must be of type \'set\' or \'get\'. Original IQ: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiui/push/IQ;->toXML()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    :goto_2c
    new-instance v0, Lmiui/push/IQ$2;

    invoke-direct {v0, p0}, Lmiui/push/IQ$2;-><init>(Lmiui/push/IQ;)V

    sget-object v1, Lmiui/push/IQ$Type;->ERROR:Lmiui/push/IQ$Type;

    invoke-virtual {v0, v1}, Lmiui/push/IQ;->setType(Lmiui/push/IQ$Type;)V

    invoke-virtual {p0}, Lmiui/push/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/push/IQ;->setPacketID(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/push/IQ;->getTo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/push/IQ;->setFrom(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/push/IQ;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/push/IQ;->setTo(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lmiui/push/IQ;->setError(Lmiui/push/XMPPError;)V

    return-object v0
.end method

.method public static createResultIQ(Lmiui/push/IQ;)Lmiui/push/IQ;
    .registers 4

    invoke-virtual {p0}, Lmiui/push/IQ;->getType()Lmiui/push/IQ$Type;

    move-result-object v0

    sget-object v1, Lmiui/push/IQ$Type;->GET:Lmiui/push/IQ$Type;

    if-eq v0, v1, :cond_2c

    invoke-virtual {p0}, Lmiui/push/IQ;->getType()Lmiui/push/IQ$Type;

    move-result-object v0

    sget-object v1, Lmiui/push/IQ$Type;->SET:Lmiui/push/IQ$Type;

    if-ne v0, v1, :cond_11

    goto :goto_2c

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IQ must be of type \'set\' or \'get\'. Original IQ: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiui/push/IQ;->toXML()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    :goto_2c
    new-instance v0, Lmiui/push/IQ$1;

    invoke-direct {v0}, Lmiui/push/IQ$1;-><init>()V

    sget-object v1, Lmiui/push/IQ$Type;->RESULT:Lmiui/push/IQ$Type;

    invoke-virtual {v0, v1}, Lmiui/push/IQ;->setType(Lmiui/push/IQ$Type;)V

    invoke-virtual {p0}, Lmiui/push/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/push/IQ;->setPacketID(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/push/IQ;->getTo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/push/IQ;->setFrom(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/push/IQ;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/push/IQ;->setTo(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Lmiui/push/IQ$Type;
    .registers 2

    iget-object v0, p0, Lmiui/push/IQ;->type:Lmiui/push/IQ$Type;

    return-object v0
.end method

.method public setType(Lmiui/push/IQ$Type;)V
    .registers 3

    if-nez p1, :cond_7

    sget-object v0, Lmiui/push/IQ$Type;->GET:Lmiui/push/IQ$Type;

    iput-object v0, p0, Lmiui/push/IQ;->type:Lmiui/push/IQ$Type;

    goto :goto_9

    :cond_7
    iput-object p1, p0, Lmiui/push/IQ;->type:Lmiui/push/IQ$Type;

    :goto_9
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 4

    invoke-super {p0}, Lmiui/push/Packet;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lmiui/push/IQ;->type:Lmiui/push/IQ$Type;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lmiui/push/IQ$Type;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ext_iq_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    return-object v0
.end method

.method public toXML()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<iq "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiui/push/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\" "

    if-eqz v1, :cond_2d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiui/push/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2d
    invoke-virtual {p0}, Lmiui/push/IQ;->getTo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_46

    const-string v1, "to=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiui/push/IQ;->getTo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_46
    invoke-virtual {p0}, Lmiui/push/IQ;->getFrom()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5f

    const-string v1, "from=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiui/push/IQ;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5f
    invoke-virtual {p0}, Lmiui/push/IQ;->getChannelId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_78

    const-string v1, "chid=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiui/push/IQ;->getChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_78
    iget-object v1, p0, Lmiui/push/IQ;->type:Lmiui/push/IQ$Type;

    if-nez v1, :cond_82

    const-string v1, "type=\"get\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_93

    :cond_82
    const-string v1, "type=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiui/push/IQ;->getType()Lmiui/push/IQ$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_93
    invoke-virtual {p0}, Lmiui/push/IQ;->getChildElementXML()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9c
    invoke-virtual {p0}, Lmiui/push/IQ;->getExtensionsXML()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiui/push/IQ;->getError()Lmiui/push/XMPPError;

    move-result-object v2

    if-eqz v2, :cond_b0

    invoke-virtual {v2}, Lmiui/push/XMPPError;->toXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b0
    const-string v3, "</iq>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
