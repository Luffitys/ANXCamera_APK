.class final Landroid/telephony/data/DataService$SetInitialAttachApnRequest;
.super Ljava/lang/Object;
.source "DataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/DataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SetInitialAttachApnRequest"
.end annotation


# instance fields
.field public final callback:Landroid/telephony/data/IDataServiceCallback;

.field public final dataProfile:Landroid/telephony/data/DataProfile;

.field public final isRoaming:Z


# direct methods
.method constructor <init>(Landroid/telephony/data/DataProfile;ZLandroid/telephony/data/IDataServiceCallback;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->dataProfile:Landroid/telephony/data/DataProfile;

    iput-boolean p2, p0, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->isRoaming:Z

    iput-object p3, p0, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    return-void
.end method
