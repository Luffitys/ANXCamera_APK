.class public final Lcom/android/server/blob/BlobStatsEventProto$BlobCommitterProto;
.super Ljava/lang/Object;
.source "BlobStatsEventProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/blob/BlobStatsEventProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BlobCommitterProto"
.end annotation


# static fields
.field public static final ACCESS_MODE:J = 0x10500000003L

.field public static final COMMIT_TIMESTAMP_MILLIS:J = 0x10300000002L

.field public static final NUM_WHITELISTED_PACKAGE:J = 0x10500000004L

.field public static final UID:J = 0x10500000001L


# instance fields
.field final synthetic this$0:Lcom/android/server/blob/BlobStatsEventProto;


# direct methods
.method public constructor <init>(Lcom/android/server/blob/BlobStatsEventProto;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/blob/BlobStatsEventProto$BlobCommitterProto;->this$0:Lcom/android/server/blob/BlobStatsEventProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
