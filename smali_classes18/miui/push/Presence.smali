.class public Lmiui/push/Presence;
.super Lmiui/push/Packet;
.source "Presence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/push/Presence$Mode;,
        Lmiui/push/Presence$Type;
    }
.end annotation


# instance fields
.field private mode:Lmiui/push/Presence$Mode;

.field private priority:I

.field private status:Ljava/lang/String;

.field private type:Lmiui/push/Presence$Type;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0, p1}, Lmiui/push/Packet;-><init>(Landroid/os/Bundle;)V

    sget-object v0, Lmiui/push/Presence$Type;->available:Lmiui/push/Presence$Type;

    iput-object v0, p0, Lmiui/push/Presence;->type:Lmiui/push/Presence$Type;

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/push/Presence;->status:Ljava/lang/String;

    const/high16 v1, -0x80000000

    iput v1, p0, Lmiui/push/Presence;->priority:I

    iput-object v0, p0, Lmiui/push/Presence;->mode:Lmiui/push/Presence$Mode;

    const-string v0, "ext_pres_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/push/Presence$Type;->valueOf(Ljava/lang/String;)Lmiui/push/Presence$Type;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Presence;->type:Lmiui/push/Presence$Type;

    :cond_22
    const-string v0, "ext_pres_status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Presence;->status:Ljava/lang/String;

    :cond_30
    const-string v0, "ext_pres_prio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/push/Presence;->priority:I

    :cond_3e
    const-string v0, "ext_pres_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/push/Presence$Mode;->valueOf(Ljava/lang/String;)Lmiui/push/Presence$Mode;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Presence;->mode:Lmiui/push/Presence$Mode;

    :cond_50
    return-void
.end method

.method public constructor <init>(Lmiui/push/Presence$Type;)V
    .registers 4

    invoke-direct {p0}, Lmiui/push/Packet;-><init>()V

    sget-object v0, Lmiui/push/Presence$Type;->available:Lmiui/push/Presence$Type;

    iput-object v0, p0, Lmiui/push/Presence;->type:Lmiui/push/Presence$Type;

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/push/Presence;->status:Ljava/lang/String;

    const/high16 v1, -0x80000000

    iput v1, p0, Lmiui/push/Presence;->priority:I

    iput-object v0, p0, Lmiui/push/Presence;->mode:Lmiui/push/Presence$Mode;

    invoke-virtual {p0, p1}, Lmiui/push/Presence;->setType(Lmiui/push/Presence$Type;)V

    return-void
.end method

.method public constructor <init>(Lmiui/push/Presence$Type;Ljava/lang/String;ILmiui/push/Presence$Mode;)V
    .registers 7

    invoke-direct {p0}, Lmiui/push/Packet;-><init>()V

    sget-object v0, Lmiui/push/Presence$Type;->available:Lmiui/push/Presence$Type;

    iput-object v0, p0, Lmiui/push/Presence;->type:Lmiui/push/Presence$Type;

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/push/Presence;->status:Ljava/lang/String;

    const/high16 v1, -0x80000000

    iput v1, p0, Lmiui/push/Presence;->priority:I

    iput-object v0, p0, Lmiui/push/Presence;->mode:Lmiui/push/Presence$Mode;

    invoke-virtual {p0, p1}, Lmiui/push/Presence;->setType(Lmiui/push/Presence$Type;)V

    invoke-virtual {p0, p2}, Lmiui/push/Presence;->setStatus(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lmiui/push/Presence;->setPriority(I)V

    invoke-virtual {p0, p4}, Lmiui/push/Presence;->setMode(Lmiui/push/Presence$Mode;)V

    return-void
.end method


# virtual methods
.method public getMode()Lmiui/push/Presence$Mode;
    .registers 2

    iget-object v0, p0, Lmiui/push/Presence;->mode:Lmiui/push/Presence$Mode;

    return-object v0
.end method

.method public getPriority()I
    .registers 2

    iget v0, p0, Lmiui/push/Presence;->priority:I

    return v0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/push/Presence;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lmiui/push/Presence$Type;
    .registers 2

    iget-object v0, p0, Lmiui/push/Presence;->type:Lmiui/push/Presence$Type;

    return-object v0
.end method

.method public isAvailable()Z
    .registers 3

    iget-object v0, p0, Lmiui/push/Presence;->type:Lmiui/push/Presence$Type;

    sget-object v1, Lmiui/push/Presence$Type;->available:Lmiui/push/Presence$Type;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isAway()Z
    .registers 3

    iget-object v0, p0, Lmiui/push/Presence;->type:Lmiui/push/Presence$Type;

    sget-object v1, Lmiui/push/Presence$Type;->available:Lmiui/push/Presence$Type;

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lmiui/push/Presence;->mode:Lmiui/push/Presence$Mode;

    sget-object v1, Lmiui/push/Presence$Mode;->away:Lmiui/push/Presence$Mode;

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lmiui/push/Presence;->mode:Lmiui/push/Presence$Mode;

    sget-object v1, Lmiui/push/Presence$Mode;->xa:Lmiui/push/Presence$Mode;

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lmiui/push/Presence;->mode:Lmiui/push/Presence$Mode;

    sget-object v1, Lmiui/push/Presence$Mode;->dnd:Lmiui/push/Presence$Mode;

    if-ne v0, v1, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public setMode(Lmiui/push/Presence$Mode;)V
    .registers 2

    iput-object p1, p0, Lmiui/push/Presence;->mode:Lmiui/push/Presence$Mode;

    return-void
.end method

.method public setPriority(I)V
    .registers 5

    const/16 v0, -0x80

    if-lt p1, v0, :cond_b

    const/16 v0, 0x80

    if-gt p1, v0, :cond_b

    iput p1, p0, Lmiui/push/Presence;->priority:I

    return-void

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Priority value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not valid. Valid range is -128 through 128."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStatus(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/push/Presence;->status:Ljava/lang/String;

    return-void
.end method

.method public setType(Lmiui/push/Presence$Type;)V
    .registers 4

    if-eqz p1, :cond_5

    iput-object p1, p0, Lmiui/push/Presence;->type:Lmiui/push/Presence$Type;

    return-void

    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Type cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 4

    invoke-super {p0}, Lmiui/push/Packet;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lmiui/push/Presence;->type:Lmiui/push/Presence$Type;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lmiui/push/Presence$Type;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ext_pres_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    iget-object v1, p0, Lmiui/push/Presence;->status:Ljava/lang/String;

    if-eqz v1, :cond_1a

    const-string v2, "ext_pres_status"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    iget v1, p0, Lmiui/push/Presence;->priority:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_25

    const-string v2, "ext_pres_prio"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_25
    iget-object v1, p0, Lmiui/push/Presence;->mode:Lmiui/push/Presence$Mode;

    if-eqz v1, :cond_38

    sget-object v2, Lmiui/push/Presence$Mode;->available:Lmiui/push/Presence$Mode;

    if-eq v1, v2, :cond_38

    iget-object v1, p0, Lmiui/push/Presence;->mode:Lmiui/push/Presence$Mode;

    invoke-virtual {v1}, Lmiui/push/Presence$Mode;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ext_pres_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    return-object v0
.end method

.method public toXML()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<presence"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiui/push/Presence;->getXmlns()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\""

    if-eqz v1, :cond_21

    const-string v1, " xmlns=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiui/push/Presence;->getXmlns()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21
    invoke-virtual {p0}, Lmiui/push/Presence;->getPacketID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_36

    const-string v1, " id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiui/push/Presence;->getPacketID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_36
    invoke-virtual {p0}, Lmiui/push/Presence;->getTo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4f

    const-string v1, " to=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiui/push/Presence;->getTo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4f
    invoke-virtual {p0}, Lmiui/push/Presence;->getFrom()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_68

    const-string v1, " from=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiui/push/Presence;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_68
    invoke-virtual {p0}, Lmiui/push/Presence;->getChannelId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_81

    const-string v1, " chid=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiui/push/Presence;->getChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_81
    iget-object v1, p0, Lmiui/push/Presence;->type:Lmiui/push/Presence$Type;

    if-eqz v1, :cond_92

    const-string v1, " type=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/push/Presence;->type:Lmiui/push/Presence$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_92
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/push/Presence;->status:Ljava/lang/String;

    if-eqz v1, :cond_ae

    const-string v1, "<status>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/push/Presence;->status:Ljava/lang/String;

    invoke-static {v1}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</status>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_ae
    iget v1, p0, Lmiui/push/Presence;->priority:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_c3

    const-string v1, "<priority>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/push/Presence;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "</priority>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c3
    iget-object v1, p0, Lmiui/push/Presence;->mode:Lmiui/push/Presence$Mode;

    if-eqz v1, :cond_da

    sget-object v2, Lmiui/push/Presence$Mode;->available:Lmiui/push/Presence$Mode;

    if-eq v1, v2, :cond_da

    const-string v1, "<show>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/push/Presence;->mode:Lmiui/push/Presence$Mode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "</show>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_da
    invoke-virtual {p0}, Lmiui/push/Presence;->getExtensionsXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiui/push/Presence;->getError()Lmiui/push/XMPPError;

    move-result-object v1

    if-eqz v1, :cond_ee

    invoke-virtual {v1}, Lmiui/push/XMPPError;->toXML()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_ee
    const-string v2, "</presence>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
