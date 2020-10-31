.class public final Lcom/android/server/am/ActiveServicesProto$ServicesByUser;
.super Ljava/lang/Object;
.source "ActiveServicesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActiveServicesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ServicesByUser"
.end annotation


# static fields
.field public static final SERVICE_RECORDS:J = 0x20b00000002L

.field public static final USER_ID:J = 0x10500000001L


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActiveServicesProto;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActiveServicesProto;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/ActiveServicesProto$ServicesByUser;->this$0:Lcom/android/server/am/ActiveServicesProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
