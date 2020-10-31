.class public final Landroid/telephony/ims/ImsSsData$Builder;
.super Ljava/lang/Object;
.source "ImsSsData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsSsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mImsSsData:Landroid/telephony/ims/ImsSsData;


# direct methods
.method public constructor <init>(IIIII)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Landroid/telephony/ims/ImsSsData;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/telephony/ims/ImsSsData;-><init>(IIIII)V

    iput-object v6, p0, Landroid/telephony/ims/ImsSsData$Builder;->mImsSsData:Landroid/telephony/ims/ImsSsData;

    return-void
.end method


# virtual methods
.method public build()Landroid/telephony/ims/ImsSsData;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/ImsSsData$Builder;->mImsSsData:Landroid/telephony/ims/ImsSsData;

    return-object v0
.end method

.method public setCallForwardingInfo(Ljava/util/List;)Landroid/telephony/ims/ImsSsData$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsCallForwardInfo;",
            ">;)",
            "Landroid/telephony/ims/ImsSsData$Builder;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/ImsSsData$Builder;->mImsSsData:Landroid/telephony/ims/ImsSsData;

    # setter for: Landroid/telephony/ims/ImsSsData;->mCfInfo:Ljava/util/List;
    invoke-static {v0, p1}, Landroid/telephony/ims/ImsSsData;->access$102(Landroid/telephony/ims/ImsSsData;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public setSuppServiceInfo(Ljava/util/List;)Landroid/telephony/ims/ImsSsData$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsSsInfo;",
            ">;)",
            "Landroid/telephony/ims/ImsSsData$Builder;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/ImsSsData$Builder;->mImsSsData:Landroid/telephony/ims/ImsSsData;

    # setter for: Landroid/telephony/ims/ImsSsData;->mImsSsInfo:Ljava/util/List;
    invoke-static {v0, p1}, Landroid/telephony/ims/ImsSsData;->access$002(Landroid/telephony/ims/ImsSsData;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method
