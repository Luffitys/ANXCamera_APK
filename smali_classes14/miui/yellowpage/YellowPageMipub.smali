.class public Lmiui/yellowpage/YellowPageMipub;
.super Ljava/lang/Object;
.source "YellowPageMipub.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mMipubId:Ljava/lang/String;

.field private mThumbnailName:Ljava/lang/String;

.field private mYpId:J

.field private mYpName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/yellowpage/YellowPageMipub;->mMipubId:Ljava/lang/String;

    iput-object p2, p0, Lmiui/yellowpage/YellowPageMipub;->mYpName:Ljava/lang/String;

    iput-wide p3, p0, Lmiui/yellowpage/YellowPageMipub;->mYpId:J

    iput-object p5, p0, Lmiui/yellowpage/YellowPageMipub;->mThumbnailName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMipubId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/yellowpage/YellowPageMipub;->mMipubId:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/yellowpage/YellowPageMipub;->mThumbnailName:Ljava/lang/String;

    return-object v0
.end method

.method public getYpId()J
    .registers 3

    iget-wide v0, p0, Lmiui/yellowpage/YellowPageMipub;->mYpId:J

    return-wide v0
.end method

.method public getYpName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/yellowpage/YellowPageMipub;->mYpName:Ljava/lang/String;

    return-object v0
.end method
