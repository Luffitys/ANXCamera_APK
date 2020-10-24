.class Lmiui/telephony/phonenumber/TelocationProvider$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/telephony/phonenumber/TelocationProvider$DatFileRawReadListener;


# instance fields
.field final synthetic this$0:Lmiui/telephony/phonenumber/TelocationProvider;


# direct methods
.method constructor <init>(Lmiui/telephony/phonenumber/TelocationProvider;)V
    .locals 0

    iput-object p1, p0, Lmiui/telephony/phonenumber/TelocationProvider$2;->this$0:Lmiui/telephony/phonenumber/TelocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReadRaw([Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lmiui/telephony/phonenumber/TelocationProvider$2;->this$0:Lmiui/telephony/phonenumber/TelocationProvider;

    invoke-static {p0}, Lmiui/telephony/phonenumber/TelocationProvider;->access$100(Lmiui/telephony/phonenumber/TelocationProvider;)Ljava/util/HashSet;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method
