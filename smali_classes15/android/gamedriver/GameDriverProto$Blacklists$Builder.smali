.class public final Landroid/gamedriver/GameDriverProto$Blacklists$Builder;
.super Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;
.source "GameDriverProto.java"

# interfaces
.implements Landroid/gamedriver/GameDriverProto$BlacklistsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gamedriver/GameDriverProto$Blacklists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/gamedriver/GameDriverProto$Blacklists;",
        "Landroid/gamedriver/GameDriverProto$Blacklists$Builder;",
        ">;",
        "Landroid/gamedriver/GameDriverProto$BlacklistsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    # getter for: Landroid/gamedriver/GameDriverProto$Blacklists;->DEFAULT_INSTANCE:Landroid/gamedriver/GameDriverProto$Blacklists;
    invoke-static {}, Landroid/gamedriver/GameDriverProto$Blacklists;->access$900()Landroid/gamedriver/GameDriverProto$Blacklists;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/framework/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/gamedriver/GameDriverProto$1;)V
    .registers 2

    invoke-direct {p0}, Landroid/gamedriver/GameDriverProto$Blacklists$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllBlacklists(Ljava/lang/Iterable;)Landroid/gamedriver/GameDriverProto$Blacklists$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/gamedriver/GameDriverProto$Blacklist;",
            ">;)",
            "Landroid/gamedriver/GameDriverProto$Blacklists$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/gamedriver/GameDriverProto$Blacklists$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklists;

    # invokes: Landroid/gamedriver/GameDriverProto$Blacklists;->addAllBlacklists(Ljava/lang/Iterable;)V
    invoke-static {v0, p1}, Landroid/gamedriver/GameDriverProto$Blacklists;->access$1600(Landroid/gamedriver/GameDriverProto$Blacklists;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addBlacklists(ILandroid/gamedriver/GameDriverProto$Blacklist$Builder;)Landroid/gamedriver/GameDriverProto$Blacklists$Builder;
    .registers 4

    invoke-virtual {p0}, Landroid/gamedriver/GameDriverProto$Blacklists$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklists;

    # invokes: Landroid/gamedriver/GameDriverProto$Blacklists;->addBlacklists(ILandroid/gamedriver/GameDriverProto$Blacklist$Builder;)V
    invoke-static {v0, p1, p2}, Landroid/gamedriver/GameDriverProto$Blacklists;->access$1500(Landroid/gamedriver/GameDriverProto$Blacklists;ILandroid/gamedriver/GameDriverProto$Blacklist$Builder;)V

    return-object p0
.end method

.method public addBlacklists(ILandroid/gamedriver/GameDriverProto$Blacklist;)Landroid/gamedriver/GameDriverProto$Blacklists$Builder;
    .registers 4

    invoke-virtual {p0}, Landroid/gamedriver/GameDriverProto$Blacklists$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklists;

    # invokes: Landroid/gamedriver/GameDriverProto$Blacklists;->addBlacklists(ILandroid/gamedriver/GameDriverProto$Blacklist;)V
    invoke-static {v0, p1, p2}, Landroid/gamedriver/GameDriverProto$Blacklists;->access$1300(Landroid/gamedriver/GameDriverProto$Blacklists;ILandroid/gamedriver/GameDriverProto$Blacklist;)V

    return-object p0
.end method

.method public addBlacklists(Landroid/gamedriver/GameDriverProto$Blacklist$Builder;)Landroid/gamedriver/GameDriverProto$Blacklists$Builder;
    .registers 3

    invoke-virtual {p0}, Landroid/gamedriver/GameDriverProto$Blacklists$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklists;

    # invokes: Landroid/gamedriver/GameDriverProto$Blacklists;->addBlacklists(Landroid/gamedriver/GameDriverProto$Blacklist$Builder;)V
    invoke-static {v0, p1}, Landroid/gamedriver/GameDriverProto$Blacklists;->access$1400(Landroid/gamedriver/GameDriverProto$Blacklists;Landroid/gamedriver/GameDriverProto$Blacklist$Builder;)V

    return-object p0
.end method

.method public addBlacklists(Landroid/gamedriver/GameDriverProto$Blacklist;)Landroid/gamedriver/GameDriverProto$Blacklists$Builder;
    .registers 3

    invoke-virtual {p0}, Landroid/gamedriver/GameDriverProto$Blacklists$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklists;

    # invokes: Landroid/gamedriver/GameDriverProto$Blacklists;->addBlacklists(Landroid/gamedriver/GameDriverProto$Blacklist;)V
    invoke-static {v0, p1}, Landroid/gamedriver/GameDriverProto$Blacklists;->access$1200(Landroid/gamedriver/GameDriverProto$Blacklists;Landroid/gamedriver/GameDriverProto$Blacklist;)V

    return-object p0
.end method

.method public clearBlacklists()Landroid/gamedriver/GameDriverProto$Blacklists$Builder;
    .registers 2

    invoke-virtual {p0}, Landroid/gamedriver/GameDriverProto$Blacklists$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklists;

    # invokes: Landroid/gamedriver/GameDriverProto$Blacklists;->clearBlacklists()V
    invoke-static {v0}, Landroid/gamedriver/GameDriverProto$Blacklists;->access$1700(Landroid/gamedriver/GameDriverProto$Blacklists;)V

    return-object p0
.end method

.method public getBlacklists(I)Landroid/gamedriver/GameDriverProto$Blacklist;
    .registers 3

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklists;

    invoke-virtual {v0, p1}, Landroid/gamedriver/GameDriverProto$Blacklists;->getBlacklists(I)Landroid/gamedriver/GameDriverProto$Blacklist;

    move-result-object v0

    return-object v0
.end method

.method public getBlacklistsCount()I
    .registers 2

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklists;

    invoke-virtual {v0}, Landroid/gamedriver/GameDriverProto$Blacklists;->getBlacklistsCount()I

    move-result v0

    return v0
.end method

.method public getBlacklistsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/gamedriver/GameDriverProto$Blacklist;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklists;

    invoke-virtual {v0}, Landroid/gamedriver/GameDriverProto$Blacklists;->getBlacklistsList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeBlacklists(I)Landroid/gamedriver/GameDriverProto$Blacklists$Builder;
    .registers 3

    invoke-virtual {p0}, Landroid/gamedriver/GameDriverProto$Blacklists$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklists;

    # invokes: Landroid/gamedriver/GameDriverProto$Blacklists;->removeBlacklists(I)V
    invoke-static {v0, p1}, Landroid/gamedriver/GameDriverProto$Blacklists;->access$1800(Landroid/gamedriver/GameDriverProto$Blacklists;I)V

    return-object p0
.end method

.method public setBlacklists(ILandroid/gamedriver/GameDriverProto$Blacklist$Builder;)Landroid/gamedriver/GameDriverProto$Blacklists$Builder;
    .registers 4

    invoke-virtual {p0}, Landroid/gamedriver/GameDriverProto$Blacklists$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklists;

    # invokes: Landroid/gamedriver/GameDriverProto$Blacklists;->setBlacklists(ILandroid/gamedriver/GameDriverProto$Blacklist$Builder;)V
    invoke-static {v0, p1, p2}, Landroid/gamedriver/GameDriverProto$Blacklists;->access$1100(Landroid/gamedriver/GameDriverProto$Blacklists;ILandroid/gamedriver/GameDriverProto$Blacklist$Builder;)V

    return-object p0
.end method

.method public setBlacklists(ILandroid/gamedriver/GameDriverProto$Blacklist;)Landroid/gamedriver/GameDriverProto$Blacklists$Builder;
    .registers 4

    invoke-virtual {p0}, Landroid/gamedriver/GameDriverProto$Blacklists$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroid/gamedriver/GameDriverProto$Blacklists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/gamedriver/GameDriverProto$Blacklists;

    # invokes: Landroid/gamedriver/GameDriverProto$Blacklists;->setBlacklists(ILandroid/gamedriver/GameDriverProto$Blacklist;)V
    invoke-static {v0, p1, p2}, Landroid/gamedriver/GameDriverProto$Blacklists;->access$1000(Landroid/gamedriver/GameDriverProto$Blacklists;ILandroid/gamedriver/GameDriverProto$Blacklist;)V

    return-object p0
.end method
