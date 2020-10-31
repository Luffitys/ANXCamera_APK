.class Lmiui/securityspace/CrossUserPickerActivity$CrossUserContextWrapper;
.super Landroid/content/ContextWrapper;
.source "CrossUserPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/securityspace/CrossUserPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CrossUserContextWrapper"
.end annotation


# instance fields
.field mBase:Landroid/content/Context;

.field mCrossUser:Landroid/os/UserHandle;

.field final synthetic this$0:Lmiui/securityspace/CrossUserPickerActivity;


# direct methods
.method public constructor <init>(Lmiui/securityspace/CrossUserPickerActivity;Landroid/content/Context;Landroid/os/UserHandle;)V
    .registers 4

    iput-object p1, p0, Lmiui/securityspace/CrossUserPickerActivity$CrossUserContextWrapper;->this$0:Lmiui/securityspace/CrossUserPickerActivity;

    invoke-direct {p0, p2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lmiui/securityspace/CrossUserPickerActivity$CrossUserContextWrapper;->mBase:Landroid/content/Context;

    iput-object p3, p0, Lmiui/securityspace/CrossUserPickerActivity$CrossUserContextWrapper;->mCrossUser:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public getContentResolver()Landroid/content/ContentResolver;
    .registers 3

    iget-object v0, p0, Lmiui/securityspace/CrossUserPickerActivity$CrossUserContextWrapper;->mBase:Landroid/content/Context;

    iget-object v1, p0, Lmiui/securityspace/CrossUserPickerActivity$CrossUserContextWrapper;->mCrossUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getContentResolverForUser(Landroid/os/UserHandle;)Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method
