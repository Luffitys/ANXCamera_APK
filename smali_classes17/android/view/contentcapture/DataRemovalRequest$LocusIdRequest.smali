.class public final Landroid/view/contentcapture/DataRemovalRequest$LocusIdRequest;
.super Ljava/lang/Object;
.source "DataRemovalRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/contentcapture/DataRemovalRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocusIdRequest"
.end annotation


# instance fields
.field private final mFlags:I

.field private final mLocusId:Landroid/content/LocusId;

.field final synthetic this$0:Landroid/view/contentcapture/DataRemovalRequest;


# direct methods
.method private constructor <init>(Landroid/view/contentcapture/DataRemovalRequest;Landroid/content/LocusId;I)V
    .registers 4

    iput-object p1, p0, Landroid/view/contentcapture/DataRemovalRequest$LocusIdRequest;->this$0:Landroid/view/contentcapture/DataRemovalRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/view/contentcapture/DataRemovalRequest$LocusIdRequest;->mLocusId:Landroid/content/LocusId;

    iput p3, p0, Landroid/view/contentcapture/DataRemovalRequest$LocusIdRequest;->mFlags:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/contentcapture/DataRemovalRequest;Landroid/content/LocusId;ILandroid/view/contentcapture/DataRemovalRequest$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/view/contentcapture/DataRemovalRequest$LocusIdRequest;-><init>(Landroid/view/contentcapture/DataRemovalRequest;Landroid/content/LocusId;I)V

    return-void
.end method


# virtual methods
.method public getFlags()I
    .registers 2

    iget v0, p0, Landroid/view/contentcapture/DataRemovalRequest$LocusIdRequest;->mFlags:I

    return v0
.end method

.method public getLocusId()Landroid/content/LocusId;
    .registers 2

    iget-object v0, p0, Landroid/view/contentcapture/DataRemovalRequest$LocusIdRequest;->mLocusId:Landroid/content/LocusId;

    return-object v0
.end method
