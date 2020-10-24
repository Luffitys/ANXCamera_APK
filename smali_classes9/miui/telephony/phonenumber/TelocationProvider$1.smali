.class Lmiui/telephony/phonenumber/TelocationProvider$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/telephony/phonenumber/TelocationProvider$DatFileRawReadListener;


# instance fields
.field final synthetic this$0:Lmiui/telephony/phonenumber/TelocationProvider;


# direct methods
.method constructor <init>(Lmiui/telephony/phonenumber/TelocationProvider;)V
    .locals 0

    iput-object p1, p0, Lmiui/telephony/phonenumber/TelocationProvider$1;->this$0:Lmiui/telephony/phonenumber/TelocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReadRaw([Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lmiui/telephony/phonenumber/TelocationProvider$1;->this$0:Lmiui/telephony/phonenumber/TelocationProvider;

    invoke-static {p0}, Lmiui/telephony/phonenumber/TelocationProvider;->access$000(Lmiui/telephony/phonenumber/TelocationProvider;)Ljava/util/HashMap;

    move-result-object p0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
