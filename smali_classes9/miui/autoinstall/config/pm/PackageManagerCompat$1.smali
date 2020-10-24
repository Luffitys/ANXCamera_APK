.class Lmiui/autoinstall/config/pm/PackageManagerCompat$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lmiui/autoinstall/config/pm/PackageManagerCompat;


# direct methods
.method constructor <init>(Lmiui/autoinstall/config/pm/PackageManagerCompat;)V
    .locals 0

    iput-object p1, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat$1;->this$0:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iget-object p0, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat$1;->this$0:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    invoke-static {p2}, LOooO0O0/OooO0Oo/OooO00o/OooO0OO;->OooO0O0(Landroid/os/IBinder;)LOooO0O0/OooO0Oo/OooO00o/OooO0Oo;

    move-result-object p1

    invoke-static {p0, p1}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->access$002(Lmiui/autoinstall/config/pm/PackageManagerCompat;LOooO0O0/OooO0Oo/OooO00o/OooO0Oo;)LOooO0O0/OooO0Oo/OooO00o/OooO0Oo;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p0, p0, Lmiui/autoinstall/config/pm/PackageManagerCompat$1;->this$0:Lmiui/autoinstall/config/pm/PackageManagerCompat;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->access$002(Lmiui/autoinstall/config/pm/PackageManagerCompat;LOooO0O0/OooO0Oo/OooO00o/OooO0Oo;)LOooO0O0/OooO0Oo/OooO00o/OooO0Oo;

    return-void
.end method
