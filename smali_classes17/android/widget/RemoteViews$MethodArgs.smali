.class Landroid/widget/RemoteViews$MethodArgs;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MethodArgs"
.end annotation


# instance fields
.field public asyncMethod:Ljava/lang/invoke/MethodHandle;

.field public asyncMethodName:Ljava/lang/String;

.field public syncMethod:Ljava/lang/invoke/MethodHandle;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
