.class public Lmiui/yellowpage/YellowPage$Social;
.super Ljava/lang/Object;
.source "YellowPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/yellowpage/YellowPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Social"
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private mProviderId:I

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/yellowpage/YellowPage$Social;->mUrl:Ljava/lang/String;

    iput-object p2, p0, Lmiui/yellowpage/YellowPage$Social;->mName:Ljava/lang/String;

    iput p3, p0, Lmiui/yellowpage/YellowPage$Social;->mProviderId:I

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/yellowpage/YellowPage$Social;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderId()I
    .registers 2

    iget v0, p0, Lmiui/yellowpage/YellowPage$Social;->mProviderId:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/yellowpage/YellowPage$Social;->mUrl:Ljava/lang/String;

    return-object v0
.end method
