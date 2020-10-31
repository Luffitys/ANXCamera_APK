.class public final Landroid/os/ProcrankProto$Summary;
.super Ljava/lang/Object;
.source "ProcrankProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ProcrankProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Summary"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ProcrankProto$Summary$Ram;,
        Landroid/os/ProcrankProto$Summary$Zram;
    }
.end annotation


# static fields
.field public static final RAM:J = 0x10b00000003L

.field public static final TOTAL:J = 0x10b00000001L

.field public static final ZRAM:J = 0x10b00000002L


# instance fields
.field final synthetic this$0:Landroid/os/ProcrankProto;


# direct methods
.method public constructor <init>(Landroid/os/ProcrankProto;)V
    .registers 2

    iput-object p1, p0, Landroid/os/ProcrankProto$Summary;->this$0:Landroid/os/ProcrankProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
