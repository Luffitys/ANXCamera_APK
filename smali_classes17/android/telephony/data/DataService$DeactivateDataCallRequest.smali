.class final Landroid/telephony/data/DataService$DeactivateDataCallRequest;
.super Ljava/lang/Object;
.source "DataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/DataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeactivateDataCallRequest"
.end annotation


# instance fields
.field public final callback:Landroid/telephony/data/IDataServiceCallback;

.field public final cid:I

.field public final reason:I


# direct methods
.method constructor <init>(IILandroid/telephony/data/IDataServiceCallback;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->cid:I

    iput p2, p0, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->reason:I

    iput-object p3, p0, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    return-void
.end method
