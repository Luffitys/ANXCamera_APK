.class public final Lcom/android/server/am/AppTimeTrackerProto$PackageTime;
.super Ljava/lang/Object;
.source "AppTimeTrackerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppTimeTrackerProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PackageTime"
.end annotation


# static fields
.field public static final DURATION_MS:J = 0x10300000002L

.field public static final PACKAGE:J = 0x10900000001L


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppTimeTrackerProto;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppTimeTrackerProto;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/AppTimeTrackerProto$PackageTime;->this$0:Lcom/android/server/am/AppTimeTrackerProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
