.class public final Lcom/android/server/AppStateTrackerProto$ExemptedPackage;
.super Ljava/lang/Object;
.source "AppStateTrackerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppStateTrackerProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ExemptedPackage"
.end annotation


# static fields
.field public static final PACKAGE_NAME:J = 0x10900000002L

.field public static final USER_ID:J = 0x10500000001L


# instance fields
.field final synthetic this$0:Lcom/android/server/AppStateTrackerProto;


# direct methods
.method public constructor <init>(Lcom/android/server/AppStateTrackerProto;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/AppStateTrackerProto$ExemptedPackage;->this$0:Lcom/android/server/AppStateTrackerProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
