.class public final Lcom/android/server/am/UserControllerProto$User;
.super Ljava/lang/Object;
.source "UserControllerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/UserControllerProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "User"
.end annotation


# static fields
.field public static final ID:J = 0x10500000001L

.field public static final STATE:J = 0x10b00000002L


# instance fields
.field final synthetic this$0:Lcom/android/server/am/UserControllerProto;


# direct methods
.method public constructor <init>(Lcom/android/server/am/UserControllerProto;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/UserControllerProto$User;->this$0:Lcom/android/server/am/UserControllerProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
